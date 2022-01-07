; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__unmarshal_itsf_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__unmarshal_itsf_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmItsfHeader = type { i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32 }

@_CHM_ITSF_V2_LEN = common dso_local global i32 0, align 4
@_CHM_ITSF_V3_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ITSF\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.chmItsfHeader*)* @_unmarshal_itsf_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_unmarshal_itsf_header(i8** %0, i32* %1, %struct.chmItsfHeader* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.chmItsfHeader*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.chmItsfHeader* %2, %struct.chmItsfHeader** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @_CHM_ITSF_V2_LEN, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @_CHM_ITSF_V3_LEN, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %151

19:                                               ; preds = %12, %3
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %23 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @_unmarshal_char_array(i8** %20, i32* %21, i32 %24, i32 4)
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %29 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %28, i32 0, i32 0
  %30 = call i32 @_unmarshal_int32(i8** %26, i32* %27, i32* %29)
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %34 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %33, i32 0, i32 1
  %35 = call i32 @_unmarshal_int32(i8** %31, i32* %32, i32* %34)
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %39 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %38, i32 0, i32 2
  %40 = call i32 @_unmarshal_int32(i8** %36, i32* %37, i32* %39)
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %44 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %43, i32 0, i32 12
  %45 = call i32 @_unmarshal_uint32(i8** %41, i32* %42, i32* %44)
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %49 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %48, i32 0, i32 11
  %50 = call i32 @_unmarshal_uint32(i8** %46, i32* %47, i32* %49)
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %54 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @_unmarshal_uuid(i8** %51, i32* %52, i32 %55)
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %60 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @_unmarshal_uuid(i8** %57, i32* %58, i32 %61)
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %66 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %65, i32 0, i32 8
  %67 = call i32 @_unmarshal_uint64(i8** %63, i32* %64, i64* %66)
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %71 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %70, i32 0, i32 7
  %72 = call i32 @_unmarshal_uint64(i8** %68, i32* %69, i64* %71)
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %76 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %75, i32 0, i32 4
  %77 = call i32 @_unmarshal_uint64(i8** %73, i32* %74, i64* %76)
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %81 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %80, i32 0, i32 3
  %82 = call i32 @_unmarshal_uint64(i8** %78, i32* %79, i64* %81)
  %83 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %84 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @memcmp(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %19
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %4, align 4
  br label %151

90:                                               ; preds = %19
  %91 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %92 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %97 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @_CHM_ITSF_V2_LEN, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %4, align 4
  br label %151

103:                                              ; preds = %95
  br label %121

104:                                              ; preds = %90
  %105 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %106 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %111 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @_CHM_ITSF_V3_LEN, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %4, align 4
  br label %151

117:                                              ; preds = %109
  br label %120

118:                                              ; preds = %104
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* %4, align 4
  br label %151

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %120, %103
  %122 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %123 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %134 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %133, i32 0, i32 5
  %135 = call i32 @_unmarshal_uint64(i8** %131, i32* %132, i64* %134)
  br label %138

136:                                              ; preds = %126
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %4, align 4
  br label %151

138:                                              ; preds = %130
  br label %149

139:                                              ; preds = %121
  %140 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %141 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %144 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %142, %145
  %147 = load %struct.chmItsfHeader*, %struct.chmItsfHeader** %7, align 8
  %148 = getelementptr inbounds %struct.chmItsfHeader, %struct.chmItsfHeader* %147, i32 0, i32 5
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %139, %138
  %150 = load i32, i32* @TRUE, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %136, %118, %115, %101, %88, %17
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @_unmarshal_char_array(i8**, i32*, i32, i32) #1

declare dso_local i32 @_unmarshal_int32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_uint32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_uuid(i8**, i32*, i32) #1

declare dso_local i32 @_unmarshal_uint64(i8**, i32*, i64*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
