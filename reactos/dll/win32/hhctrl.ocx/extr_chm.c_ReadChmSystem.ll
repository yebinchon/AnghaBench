; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_ReadChmSystem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_ReadChmSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.anon = type { i32, i32 }

@ReadChmSystem.wszSYSTEM = internal constant [8 x i8] c"#SYSTEM\00", align 1
@STGM_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not open #SYSTEM stream: %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"version is %x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"TOC is %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Default topic is %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Title is %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Locale is: %d\0A\00", align 1
@LOCALE_IDEFAULTANSICODEPAGE = common dso_local global i32 0, align 4
@LOCALE_RETURN_NUMBER = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Window name is %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Compiled file is %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Version is %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Time is %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Number of info types: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Check sum: %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"unhandled code %x, size %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ReadChmSystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadChmSystem(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.anon, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8 -17, i8* %5, align 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @STGM_READ, align 4
  %15 = call i64 @IStorage_OpenStream(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ReadChmSystem.wszSYSTEM, i64 0, i64 0), i32* null, i32 %14, i32 0, i32** %4)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @FAILED(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %196

23:                                               ; preds = %1
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 (i32*, ...) @IStream_Read(i32* %24, i8* %5, i64 1, i8* %6)
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  %28 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i8* @heap_alloc(i32 8)
  store i8* %29, i8** %8, align 8
  store i8 8, i8* %7, align 1
  br label %30

30:                                               ; preds = %23, %188
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 (i32*, ...) @IStream_Read(i32* %31, %struct.anon* %10, i64 8, i8* %6)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %189

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8, i8* %7, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %7, align 1
  %48 = call i8* @heap_realloc(i8* %44, i8 signext %47)
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i32*, i32** %4, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 (i32*, ...) @IStream_Read(i32* %50, i8* %51, i32 %53, i8* %6)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %189

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %182 [
    i32 0, label %62
    i32 2, label %78
    i32 3, label %94
    i32 4, label %110
    i32 5, label %133
    i32 6, label %145
    i32 9, label %161
    i32 10, label %167
    i32 12, label %172
    i32 15, label %177
  ]

62:                                               ; preds = %59
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @debugstr_an(i8* %63, i32 %65)
  %67 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @heap_free(i8* %70)
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @strdupnAtoW(i8* %72, i32 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %188

78:                                               ; preds = %59
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @debugstr_an(i8* %79, i32 %81)
  %83 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @heap_free(i8* %86)
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @strdupnAtoW(i8* %88, i32 %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %188

94:                                               ; preds = %59
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @debugstr_an(i8* %95, i32 %97)
  %99 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @heap_free(i8* %102)
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @strdupnAtoW(i8* %104, i32 %106)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  br label %188

110:                                              ; preds = %59
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = bitcast i8* %112 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = bitcast i8* %117 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @LOCALE_IDEFAULTANSICODEPAGE, align 4
  %121 = load i32, i32* @LOCALE_RETURN_NUMBER, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 5
  %125 = bitcast i32* %124 to i8*
  %126 = call i32 @GetLocaleInfoW(i32 %119, i32 %122, i8* %125, i32 4)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %110
  %129 = load i32, i32* @CP_ACP, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %110
  br label %188

133:                                              ; preds = %59
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @debugstr_an(i8* %134, i32 %136)
  %138 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @strdupnAtoW(i8* %139, i32 %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  br label %188

145:                                              ; preds = %59
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @debugstr_an(i8* %146, i32 %148)
  %150 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @heap_free(i8* %153)
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @strdupnAtoW(i8* %155, i32 %157)
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  store i8* %158, i8** %160, align 8
  br label %188

161:                                              ; preds = %59
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @debugstr_an(i8* %162, i32 %164)
  %166 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %165)
  br label %188

167:                                              ; preds = %59
  %168 = load i8*, i8** %8, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %170)
  br label %188

172:                                              ; preds = %59
  %173 = load i8*, i8** %8, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %175)
  br label %188

177:                                              ; preds = %59
  %178 = load i8*, i8** %8, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %180)
  br label %188

182:                                              ; preds = %59
  %183 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %184, i32 %186)
  br label %188

188:                                              ; preds = %182, %177, %172, %167, %161, %145, %133, %132, %94, %78, %62
  br label %30

189:                                              ; preds = %58, %36
  %190 = load i8*, i8** %8, align 8
  %191 = call i32 @heap_free(i8* %190)
  %192 = load i32*, i32** %4, align 8
  %193 = call i32 @IStream_Release(i32* %192)
  %194 = load i64, i64* %9, align 8
  %195 = call i32 @SUCCEEDED(i64 %194)
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %189, %19
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i64 @IStorage_OpenStream(i32, i8*, i32*, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i64 @IStream_Read(i32*, ...) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i8* @heap_realloc(i8*, i8 signext) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i8* @strdupnAtoW(i8*, i32) #1

declare dso_local i32 @GetLocaleInfoW(i32, i32, i8*, i32) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @SUCCEEDED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
