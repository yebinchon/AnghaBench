; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_pagesetup_set_devnames.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_pagesetup_set_devnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@CP_ACP = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32, i32)* @pagesetup_set_devnames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pagesetup_set_devnames(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca [256 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 16, i32* %11, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @lstrlenW(i32 %22)
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @lstrlenW(i32 %28)
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @lstrlenW(i32 %34)
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %14, align 4
  br label %50

40:                                               ; preds = %4
  %41 = load i32, i32* @CP_ACP, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @WideCharToMultiByte(i32 %41, i32 0, i32 %42, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @CP_ACP, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @WideCharToMultiByte(i32 %44, i32 0, i32 %45, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* @CP_ACP, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @WideCharToMultiByte(i32 %47, i32 0, i32 %48, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %40, %21
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %50
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @GMEM_MOVEABLE, align 4
  %74 = call i32 @GlobalReAlloc(i32 %71, i32 %72, i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 4
  br label %89

80:                                               ; preds = %50
  %81 = load i32, i32* @GMEM_MOVEABLE, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @GlobalAlloc(i32 %81, i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %65
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.TYPE_10__* @GlobalLock(i32 %95)
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %9, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %147

101:                                              ; preds = %89
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 1
  %104 = bitcast %struct.TYPE_10__* %103 to i32*
  store i32* %104, i32** %15, align 8
  store i32 4, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %15, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @lstrcpyW(i32* %108, i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = udiv i64 %112, 4
  %114 = load i32*, i32** %15, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %15, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = udiv i64 %117, 4
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = add i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32*, i32** %15, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @lstrcpyW(i32* %126, i32 %127)
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = udiv i64 %130, 4
  %132 = load i32*, i32** %15, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 %131
  store i32* %133, i32** %15, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = udiv i64 %135, 4
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @lstrcpyW(i32* %144, i32 %145)
  br label %189

147:                                              ; preds = %89
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 1
  %150 = bitcast %struct.TYPE_10__* %149 to i8*
  store i8* %150, i8** %16, align 8
  store i32 16, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @CP_ACP, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load i8*, i8** %16, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @WideCharToMultiByte(i32 %154, i32 0, i32 %155, i32 -1, i8* %156, i32 %157, i32* null, i32* null)
  %159 = load i32, i32* %12, align 4
  %160 = load i8*, i8** %16, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %16, align 8
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* @CP_ACP, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i8*, i8** %16, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @WideCharToMultiByte(i32 %169, i32 0, i32 %170, i32 -1, i8* %171, i32 %172, i32* null, i32* null)
  %174 = load i32, i32* %13, align 4
  %175 = load i8*, i8** %16, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %16, align 8
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @CP_ACP, align 4
  %185 = load i32, i32* %8, align 4
  %186 = load i8*, i8** %16, align 8
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @WideCharToMultiByte(i32 %184, i32 0, i32 %185, i32 -1, i8* %186, i32 %187, i32* null, i32* null)
  br label %189

189:                                              ; preds = %147, %101
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 3
  store i32 0, i32* %191, align 4
  %192 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %193 = call i32 @ARRAY_SIZE(i32* %192)
  store i32 %193, i32* %11, align 4
  %194 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %195 = call i32 @GetDefaultPrinterW(i32* %194, i32* %11)
  %196 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @lstrcmpW(i32* %196, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %189
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  store i32 1, i32* %202, align 4
  br label %203

203:                                              ; preds = %200, %189
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @GlobalUnlock(i32 %209)
  ret void
}

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @GlobalReAlloc(i32, i32, i32) #1

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local %struct.TYPE_10__* @GlobalLock(i32) #1

declare dso_local i32 @lstrcpyW(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @GetDefaultPrinterW(i32*, i32*) #1

declare dso_local i32 @lstrcmpW(i32*, i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
