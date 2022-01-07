; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_nid2obj.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_nid2obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }

@NUM_NID = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@nid_objs = common dso_local global %struct.TYPE_9__* null, align 8
@OBJ_F_OBJ_NID2OBJ = common dso_local global i32 0, align 4
@OBJ_R_UNKNOWN_NID = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4
@added = common dso_local global i32* null, align 8
@ADDED_NID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @OBJ_nid2obj(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @NUM_NID, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NID_undef, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @nid_objs, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NID_undef, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, i32* @OBJ_F_OBJ_NID2OBJ, align 4
  %28 = load i32, i32* @OBJ_R_UNKNOWN_NID, align 4
  %29 = call i32 @OBJerr(i32 %27, i32 %28)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %60

30:                                               ; preds = %17, %13
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @nid_objs, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = bitcast %struct.TYPE_9__* %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %2, align 8
  br label %60

36:                                               ; preds = %9, %1
  %37 = load i32, i32* @OPENSSL_INIT_LOAD_CONFIG, align 4
  %38 = call i32 @OPENSSL_init_crypto(i32 %37, i32* null)
  %39 = load i32*, i32** @added, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %60

42:                                               ; preds = %36
  %43 = load i32, i32* @ADDED_NID, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** @added, align 8
  %49 = call %struct.TYPE_8__* @lh_ADDED_OBJ_retrieve(i32* %48, %struct.TYPE_8__* %4)
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %5, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %2, align 8
  br label %60

56:                                               ; preds = %42
  %57 = load i32, i32* @OBJ_F_OBJ_NID2OBJ, align 4
  %58 = load i32, i32* @OBJ_R_UNKNOWN_NID, align 4
  %59 = call i32 @OBJerr(i32 %57, i32 %58)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %60

60:                                               ; preds = %56, %52, %41, %30, %26
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %61
}

declare dso_local i32 @OBJerr(i32, i32) #1

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @lh_ADDED_OBJ_retrieve(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
