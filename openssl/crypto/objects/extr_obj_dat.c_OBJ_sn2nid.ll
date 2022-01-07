; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_sn2nid.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_sn2nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }

@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4
@added = common dso_local global i32* null, align 8
@ADDED_SNAME = common dso_local global i32 0, align 4
@sn_objs = common dso_local global i32 0, align 4
@NUM_SN = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@nid_objs = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_sn2nid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %5, align 8
  %9 = load i32, i32* @OPENSSL_INIT_LOAD_CONFIG, align 4
  %10 = call i32 @OPENSSL_init_crypto(i32 %9, i32* null)
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i32*, i32** @added, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load i32, i32* @ADDED_SNAME, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %18, align 8
  %19 = load i32*, i32** @added, align 8
  %20 = call %struct.TYPE_8__* @lh_ADDED_OBJ_retrieve(i32* %19, %struct.TYPE_8__* %6)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %7, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %2, align 4
  br label %46

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* @sn_objs, align 4
  %32 = load i32, i32* @NUM_SN, align 4
  %33 = call i32* @OBJ_bsearch_sn(%struct.TYPE_7__** %5, i32 %31, i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @NID_undef, align 4
  store i32 %37, i32* %2, align 4
  br label %46

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @nid_objs, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %38, %36, %23
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @lh_ADDED_OBJ_retrieve(i32*, %struct.TYPE_8__*) #1

declare dso_local i32* @OBJ_bsearch_sn(%struct.TYPE_7__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
