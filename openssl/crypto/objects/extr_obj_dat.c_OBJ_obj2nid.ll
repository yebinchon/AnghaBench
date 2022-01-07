; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_obj2nid.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_obj2nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }

@NID_undef = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4
@added = common dso_local global i32* null, align 8
@ADDED_DATA = common dso_local global i32 0, align 4
@obj_objs = common dso_local global i32 0, align 4
@NUM_OBJ = common dso_local global i32 0, align 4
@nid_objs = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_obj2nid(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = icmp eq %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @NID_undef, align 4
  store i32 %10, i32* %2, align 4
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %66

21:                                               ; preds = %11
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @NID_undef, align 4
  store i32 %27, i32* %2, align 4
  br label %66

28:                                               ; preds = %21
  %29 = load i32, i32* @OPENSSL_INIT_LOAD_CONFIG, align 4
  %30 = call i32 @OPENSSL_init_crypto(i32 %29, i32* null)
  %31 = load i32*, i32** @added, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load i32, i32* @ADDED_DATA, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %37, align 8
  %38 = load i32*, i32** @added, align 8
  %39 = call %struct.TYPE_9__* @lh_ADDED_OBJ_retrieve(i32* %38, %struct.TYPE_9__* %5)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %6, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %66

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* @obj_objs, align 4
  %52 = load i32, i32* @NUM_OBJ, align 4
  %53 = call i32* @OBJ_bsearch_obj(%struct.TYPE_8__** %3, i32 %51, i32 %52)
  store i32* %53, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @NID_undef, align 4
  store i32 %57, i32* %2, align 4
  br label %66

58:                                               ; preds = %50
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @nid_objs, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %58, %56, %42, %26, %16, %9
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @lh_ADDED_OBJ_retrieve(i32*, %struct.TYPE_9__*) #1

declare dso_local i32* @OBJ_bsearch_obj(%struct.TYPE_8__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
