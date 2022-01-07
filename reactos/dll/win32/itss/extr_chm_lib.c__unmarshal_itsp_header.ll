; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__unmarshal_itsp_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__unmarshal_itsp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmItspHeader = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_CHM_ITSP_V1_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ITSP\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.chmItspHeader*)* @_unmarshal_itsp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_unmarshal_itsp_header(i8** %0, i32* %1, %struct.chmItspHeader* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.chmItspHeader*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.chmItspHeader* %2, %struct.chmItspHeader** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @_CHM_ITSP_V1_LEN, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %4, align 4
  br label %117

14:                                               ; preds = %3
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %18 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @_unmarshal_char_array(i8** %15, i32* %16, i32 %19, i32 4)
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %24 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %23, i32 0, i32 0
  %25 = call i32 @_unmarshal_int32(i8** %21, i32* %22, i32* %24)
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %29 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %28, i32 0, i32 1
  %30 = call i32 @_unmarshal_int32(i8** %26, i32* %27, i32* %29)
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %34 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %33, i32 0, i32 2
  %35 = call i32 @_unmarshal_int32(i8** %31, i32* %32, i32* %34)
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %39 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %38, i32 0, i32 14
  %40 = call i32 @_unmarshal_uint32(i8** %36, i32* %37, i32* %39)
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %44 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %43, i32 0, i32 3
  %45 = call i32 @_unmarshal_int32(i8** %41, i32* %42, i32* %44)
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %49 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %48, i32 0, i32 4
  %50 = call i32 @_unmarshal_int32(i8** %46, i32* %47, i32* %49)
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %54 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %53, i32 0, i32 5
  %55 = call i32 @_unmarshal_int32(i8** %51, i32* %52, i32* %54)
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %59 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %58, i32 0, i32 6
  %60 = call i32 @_unmarshal_int32(i8** %56, i32* %57, i32* %59)
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %64 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %63, i32 0, i32 7
  %65 = call i32 @_unmarshal_int32(i8** %61, i32* %62, i32* %64)
  %66 = load i8**, i8*** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %69 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %68, i32 0, i32 13
  %70 = call i32 @_unmarshal_uint32(i8** %66, i32* %67, i32* %69)
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %74 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %73, i32 0, i32 8
  %75 = call i32 @_unmarshal_int32(i8** %71, i32* %72, i32* %74)
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %79 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %78, i32 0, i32 12
  %80 = call i32 @_unmarshal_uint32(i8** %76, i32* %77, i32* %79)
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %84 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @_unmarshal_uuid(i8** %81, i32* %82, i32 %85)
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %90 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @_unmarshal_uchar_array(i8** %87, i32* %88, i32 %91, i32 16)
  %93 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %94 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @memcmp(i32 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %14
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %4, align 4
  br label %117

100:                                              ; preds = %14
  %101 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %102 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %4, align 4
  br label %117

107:                                              ; preds = %100
  %108 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %109 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @_CHM_ITSP_V1_LEN, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %4, align 4
  br label %117

115:                                              ; preds = %107
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %113, %105, %98, %12
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @_unmarshal_char_array(i8**, i32*, i32, i32) #1

declare dso_local i32 @_unmarshal_int32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_uint32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_uuid(i8**, i32*, i32) #1

declare dso_local i32 @_unmarshal_uchar_array(i8**, i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
