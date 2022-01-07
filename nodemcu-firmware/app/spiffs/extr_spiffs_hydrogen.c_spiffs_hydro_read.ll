; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_hydrogen.c_spiffs_hydro_read.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_hydrogen.c_spiffs_hydro_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }

@SPIFFS_O_RDONLY = common dso_local global i32 0, align 4
@SPIFFS_ERR_NOT_READABLE = common dso_local global i64 0, align 8
@SPIFFS_UNDEFINED_LEN = common dso_local global i64 0, align 8
@SPIFFS_ERR_END_OF_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i8*, i64)* @spiffs_hydro_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spiffs_hydro_read(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @SPIFFS_API_CHECK_CFG(i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @SPIFFS_API_CHECK_MOUNT(i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @SPIFFS_LOCK(i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @SPIFFS_FH_UNOFFS(i32* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @spiffs_fd_get(i32* %22, i32 %23, %struct.TYPE_4__** %10)
  store i64 %24, i64* %11, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @SPIFFS_API_CHECK_RES_UNLOCK(i32* %25, i64 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SPIFFS_O_RDONLY, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load i64, i64* @SPIFFS_ERR_NOT_READABLE, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @SPIFFS_API_CHECK_RES_UNLOCK(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SPIFFS_UNDEFINED_LEN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i64, i64* @SPIFFS_ERR_END_OF_OBJECT, align 8
  store i64 %49, i64* %11, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @SPIFFS_API_CHECK_RES_UNLOCK(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %45, %39
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %58, %61
  br i1 %62, label %63, label %104

63:                                               ; preds = %53
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load i32*, i32** %6, align 8
  %75 = load i64, i64* @SPIFFS_ERR_END_OF_OBJECT, align 8
  %76 = call i32 @SPIFFS_API_CHECK_RES_UNLOCK(i32* %74, i64 %75)
  br label %77

77:                                               ; preds = %73, %63
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = call i64 @spiffs_object_read(%struct.TYPE_4__* %78, i64 %81, i64 %82, i32* %84)
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @SPIFFS_ERR_END_OF_OBJECT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %77
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @SPIFFS_UNLOCK(i32* %95)
  %97 = load i64, i64* %12, align 8
  store i64 %97, i64* %5, align 8
  br label %125

98:                                               ; preds = %77
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @SPIFFS_API_CHECK_RES_UNLOCK(i32* %99, i64 %100)
  %102 = load i64, i64* %12, align 8
  store i64 %102, i64* %9, align 8
  br label %103

103:                                              ; preds = %98
  br label %116

104:                                              ; preds = %53
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = call i64 @spiffs_object_read(%struct.TYPE_4__* %105, i64 %108, i64 %109, i32* %111)
  store i64 %112, i64* %11, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @SPIFFS_API_CHECK_RES_UNLOCK(i32* %113, i64 %114)
  br label %116

116:                                              ; preds = %104, %103
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @SPIFFS_UNLOCK(i32* %122)
  %124 = load i64, i64* %9, align 8
  store i64 %124, i64* %5, align 8
  br label %125

125:                                              ; preds = %116, %89
  %126 = load i64, i64* %5, align 8
  ret i64 %126
}

declare dso_local i32 @SPIFFS_API_CHECK_CFG(i32*) #1

declare dso_local i32 @SPIFFS_API_CHECK_MOUNT(i32*) #1

declare dso_local i32 @SPIFFS_LOCK(i32*) #1

declare dso_local i32 @SPIFFS_FH_UNOFFS(i32*, i32) #1

declare dso_local i64 @spiffs_fd_get(i32*, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @SPIFFS_API_CHECK_RES_UNLOCK(i32*, i64) #1

declare dso_local i64 @spiffs_object_read(%struct.TYPE_4__*, i64, i64, i32*) #1

declare dso_local i32 @SPIFFS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
