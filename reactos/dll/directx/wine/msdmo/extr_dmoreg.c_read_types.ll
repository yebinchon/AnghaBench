; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/msdmo/extr_dmoreg.c_read_types.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/msdmo/extr_dmoreg.c_read_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@MSDMO_MAJOR_VERSION = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@KEY_READ = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@szToGuidFmt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Adding type %s subtype %s at index %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_types(i32 %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [64 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %26 = load i32, i32* @S_OK, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @MSDMO_MAJOR_VERSION, align 4
  %28 = icmp sgt i32 %27, 5
  br i1 %28, label %29, label %46

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = ptrtoint %struct.TYPE_3__* %36 to i32
  %38 = call i64 @RegQueryValueExW(i32 %34, i32* %35, i32* null, i32* null, i32 %37, i32* %12)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @HRESULT_FROM_WIN32(i64 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  br label %158

46:                                               ; preds = %5
  %47 = load i32*, i32** %8, align 8
  store i32 0, i32* %47, align 4
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @KEY_READ, align 4
  %52 = call i64 @RegOpenKeyExW(i32 %49, i32* %50, i32 0, i32 %51, i32* %14)
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %157

54:                                               ; preds = %46
  store i32 0, i32* %16, align 4
  %55 = load i32, i32* @MAX_PATH, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %17, align 8
  %58 = alloca i32, i64 %56, align 16
  store i64 %56, i64* %18, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %59, i64* %20, align 8
  br label %60

60:                                               ; preds = %152, %54
  %61 = load i64, i64* %20, align 8
  %62 = load i64, i64* @ERROR_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %153

64:                                               ; preds = %60
  %65 = load i32, i32* @MAX_PATH, align 4
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i64 @RegEnumKeyExW(i32 %66, i32 %67, i32* %58, i32* %19, i32* null, i32* null, i32* null, i32* null)
  store i64 %68, i64* %20, align 8
  %69 = load i64, i64* %20, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %152

72:                                               ; preds = %64
  store i32 0, i32* %22, align 4
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %73, i64* %23, align 8
  %74 = load i32, i32* @MAX_PATH, align 4
  %75 = zext i32 %74 to i64
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %24, align 8
  %77 = alloca i32, i64 %75, align 16
  store i64 %75, i64* %25, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @KEY_READ, align 4
  %80 = call i64 @RegOpenKeyExW(i32 %78, i32* %58, i32 0, i32 %79, i32* %21)
  br label %81

81:                                               ; preds = %145, %72
  %82 = load i64, i64* %23, align 8
  %83 = load i64, i64* @ERROR_SUCCESS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %148

85:                                               ; preds = %81
  %86 = load i32, i32* @MAX_PATH, align 4
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %22, align 4
  %89 = call i64 @RegEnumKeyExW(i32 %87, i32 %88, i32* %77, i32* %19, i32* null, i32* null, i32* null, i32* null)
  store i64 %89, i64* %23, align 8
  %90 = load i64, i64* %23, align 8
  %91 = load i64, i64* @ERROR_SUCCESS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %145

93:                                               ; preds = %85
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @S_FALSE, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i64, i64* @ERROR_MORE_DATA, align 8
  store i64 %100, i64* %20, align 8
  %101 = load i64, i64* @ERROR_MORE_DATA, align 8
  store i64 %101, i64* %23, align 8
  br label %148

102:                                              ; preds = %93
  %103 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %104 = load i32, i32* @szToGuidFmt, align 4
  %105 = call i32 @wsprintfW(i32* %103, i32 %104, i32* %58)
  %106 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = call i32 @CLSIDFromString(i32* %106, i32* %112)
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %115 = load i32, i32* @szToGuidFmt, align 4
  %116 = call i32 @wsprintfW(i32* %114, i32 %115, i32* %77)
  %117 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @CLSIDFromString(i32* %117, i32* %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = call i32 @debugstr_guid(i32* %130)
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = call i32 @debugstr_guid(i32* %137)
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %138, i32 %140)
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %102, %85
  %146 = load i32, i32* %22, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %22, align 4
  br label %81

148:                                              ; preds = %98, %81
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  %151 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %151)
  br label %152

152:                                              ; preds = %148, %64
  br label %60

153:                                              ; preds = %60
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @RegCloseKey(i32 %154)
  %156 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %156)
  br label %157

157:                                              ; preds = %153, %46
  br label %158

158:                                              ; preds = %157, %29
  %159 = load i32, i32* %11, align 4
  ret i32 %159
}

declare dso_local i64 @RegQueryValueExW(i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @RegEnumKeyExW(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @wsprintfW(i32*, i32, i32*) #1

declare dso_local i32 @CLSIDFromString(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @debugstr_guid(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
