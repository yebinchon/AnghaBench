; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_lib.c_OBJ_dup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_lib.c_OBJ_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32*, i32*, i32, i32* }

@ASN1_OBJECT_FLAG_DYNAMIC = common dso_local global i32 0, align 4
@OBJ_F_OBJ_DUP = common dso_local global i32 0, align 4
@ERR_R_ASN1_LIB = common dso_local global i32 0, align 4
@ASN1_OBJECT_FLAG_DYNAMIC_STRINGS = common dso_local global i32 0, align 4
@ASN1_OBJECT_FLAG_DYNAMIC_DATA = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @OBJ_dup(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = icmp eq %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %101

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %2, align 8
  br label %101

17:                                               ; preds = %8
  %18 = call %struct.TYPE_6__* (...) @ASN1_OBJECT_new()
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @OBJ_F_OBJ_DUP, align 4
  %23 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %24 = call i32 @OBJerr(i32 %22, i32 %23)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %101

25:                                               ; preds = %17
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC, align 4
  %30 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC_STRINGS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC_DATA, align 4
  %33 = or i32 %31, %32
  %34 = or i32 %28, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %25
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32* @OPENSSL_memdup(i32* %44, i64 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  %51 = icmp eq i32* %48, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %95

53:                                               ; preds = %41, %25
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %53
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i8* @OPENSSL_strdup(i32* %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  store i32* %73, i32** %75, align 8
  %76 = icmp eq i32* %73, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %95

78:                                               ; preds = %68, %53
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i8* @OPENSSL_strdup(i32* %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  store i32* %88, i32** %90, align 8
  %91 = icmp eq i32* %88, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %95

93:                                               ; preds = %83, %78
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %2, align 8
  br label %101

95:                                               ; preds = %92, %77, %52
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = call i32 @ASN1_OBJECT_free(%struct.TYPE_6__* %96)
  %98 = load i32, i32* @OBJ_F_OBJ_DUP, align 4
  %99 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %100 = call i32 @OBJerr(i32 %98, i32 %99)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %101

101:                                              ; preds = %95, %93, %21, %15, %7
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %102
}

declare dso_local %struct.TYPE_6__* @ASN1_OBJECT_new(...) #1

declare dso_local i32 @OBJerr(i32, i32) #1

declare dso_local i32* @OPENSSL_memdup(i32*, i64) #1

declare dso_local i8* @OPENSSL_strdup(i32*) #1

declare dso_local i32 @ASN1_OBJECT_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
