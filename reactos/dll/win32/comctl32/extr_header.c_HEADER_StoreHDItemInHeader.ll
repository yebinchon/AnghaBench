; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_StoreHDItemInHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_StoreHDItemInHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32*, i32, i32, i32, i32 }

@HDI_UNSUPPORTED_FIELDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported header fields %x\0A\00", align 1
@HDI_BITMAP = common dso_local global i32 0, align 4
@HDI_FORMAT = common dso_local global i32 0, align 4
@HDI_LPARAM = common dso_local global i32 0, align 4
@HDI_WIDTH = common dso_local global i32 0, align 4
@HDI_IMAGE = common dso_local global i32 0, align 4
@I_IMAGECALLBACK = common dso_local global i64 0, align 8
@HDI_TEXT = common dso_local global i32 0, align 4
@LPSTR_TEXTCALLBACKW = common dso_local global i32* null, align 8
@HEADER_StoreHDItemInHeader.emptyString = internal constant [1 x i32] zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, %struct.TYPE_6__*, i64)* @HEADER_StoreHDItemInHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HEADER_StoreHDItemInHeader(%struct.TYPE_5__* %0, i32 %1, %struct.TYPE_6__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @HDI_UNSUPPORTED_FIELDS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @HDI_UNSUPPORTED_FIELDS, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %14, %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @HDI_BITMAP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @HDI_FORMAT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @HDI_LPARAM, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @HDI_WIDTH, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @HDI_IMAGE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %63
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @I_IMAGECALLBACK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load i32, i32* @HDI_IMAGE, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %92

85:                                               ; preds = %68
  %86 = load i32, i32* @HDI_IMAGE, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %85, %79
  br label %93

93:                                               ; preds = %92, %63
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @HDI_TEXT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %151

98:                                               ; preds = %93
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @heap_free(i32* %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32*, i32** @LPSTR_TEXTCALLBACKW, align 8
  %109 = icmp ne i32* %107, %108
  br i1 %109, label %110, label %142

110:                                              ; preds = %98
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  br label %120

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %115
  %121 = phi i32* [ %118, %115 ], [ getelementptr inbounds ([1 x i32], [1 x i32]* @HEADER_StoreHDItemInHeader.emptyString, i64 0, i64 0), %119 ]
  store i32* %121, i32** %9, align 8
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @Str_SetPtrW(i32** %126, i32* %127)
  br label %135

129:                                              ; preds = %120
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32*, i32** %9, align 8
  %133 = ptrtoint i32* %132 to i32
  %134 = call i32 @Str_SetPtrAtoW(i32** %131, i32 %133)
  br label %135

135:                                              ; preds = %129, %124
  %136 = load i32, i32* @HDI_TEXT, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %150

142:                                              ; preds = %98
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  store i32* null, i32** %144, align 8
  %145 = load i32, i32* @HDI_TEXT, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %142, %135
  br label %151

151:                                              ; preds = %150, %93
  ret void
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @Str_SetPtrW(i32**, i32*) #1

declare dso_local i32 @Str_SetPtrAtoW(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
