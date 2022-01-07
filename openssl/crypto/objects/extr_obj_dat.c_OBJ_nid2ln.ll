; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_nid2ln.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_nid2ln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i8* }

@NUM_NID = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@nid_objs = common dso_local global %struct.TYPE_8__* null, align 8
@OBJ_F_OBJ_NID2LN = common dso_local global i32 0, align 4
@OBJ_R_UNKNOWN_NID = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4
@added = common dso_local global i32* null, align 8
@ADDED_NID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @OBJ_nid2ln(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @NUM_NID, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NID_undef, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nid_objs, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NID_undef, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, i32* @OBJ_F_OBJ_NID2LN, align 4
  %28 = load i32, i32* @OBJ_R_UNKNOWN_NID, align 4
  %29 = call i32 @OBJerr(i32 %27, i32 %28)
  store i8* null, i8** %2, align 8
  br label %63

30:                                               ; preds = %17, %13
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nid_objs, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %2, align 8
  br label %63

37:                                               ; preds = %9, %1
  %38 = load i32, i32* @OPENSSL_INIT_LOAD_CONFIG, align 4
  %39 = call i32 @OPENSSL_init_crypto(i32 %38, i32* null)
  %40 = load i32*, i32** @added, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i8* null, i8** %2, align 8
  br label %63

43:                                               ; preds = %37
  %44 = load i32, i32* @ADDED_NID, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i32*, i32** @added, align 8
  %50 = call %struct.TYPE_7__* @lh_ADDED_OBJ_retrieve(i32* %49, %struct.TYPE_7__* %4)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %5, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %2, align 8
  br label %63

59:                                               ; preds = %43
  %60 = load i32, i32* @OBJ_F_OBJ_NID2LN, align 4
  %61 = load i32, i32* @OBJ_R_UNKNOWN_NID, align 4
  %62 = call i32 @OBJerr(i32 %60, i32 %61)
  store i8* null, i8** %2, align 8
  br label %63

63:                                               ; preds = %59, %53, %42, %30, %26
  %64 = load i8*, i8** %2, align 8
  ret i8* %64
}

declare dso_local i32 @OBJerr(i32, i32) #1

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @lh_ADDED_OBJ_retrieve(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
