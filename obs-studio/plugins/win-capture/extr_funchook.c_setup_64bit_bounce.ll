; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_setup_64bit_bounce.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_setup_64bit_bounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_hook = type { i32, i64, i32, i8* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@MEM_RESERVE = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_EXECUTE_READWRITE = common dso_local global i32 0, align 4
@JMP_32_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_hook*, i64*)* @setup_64bit_bounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_64bit_bounce(%struct.func_hook* %0, i64* %1) #0 {
  %3 = alloca %struct.func_hook*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.func_hook* %0, %struct.func_hook** %3, align 8
  store i64* %1, i64** %4, align 8
  %13 = call i32 (...) @GetCurrentProcess()
  %14 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %15 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @VirtualQueryEx(i32 %13, i8* %18, %struct.TYPE_6__* %5, i32 16)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %185

23:                                               ; preds = %2
  %24 = call i32 @GetSystemInfo(%struct.TYPE_5__* %8)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %29, %31
  store i64 %32, i64* %6, align 8
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %53, %23
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 256
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @MEM_RESERVE, align 4
  %41 = load i32, i32* @MEM_COMMIT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PAGE_EXECUTE_READWRITE, align 4
  %44 = call i8* @VirtualAlloc(i32 %38, i32 %39, i32 %42, i32 %43)
  %45 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %46 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %48 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %60

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %6, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %6, align 8
  br label %33

60:                                               ; preds = %51, %33
  %61 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %62 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %102, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %67, %69
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %70, %72
  store i64 %73, i64* %6, align 8
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %94, %65
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 256
  br i1 %76, label %77, label %101

77:                                               ; preds = %74
  %78 = load i64, i64* %6, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @MEM_RESERVE, align 4
  %82 = load i32, i32* @MEM_COMMIT, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PAGE_EXECUTE_READWRITE, align 4
  %85 = call i8* @VirtualAlloc(i32 %79, i32 %80, i32 %83, i32 %84)
  %86 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %87 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %89 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  br label %101

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %6, align 8
  br label %74

101:                                              ; preds = %92, %74
  br label %102

102:                                              ; preds = %101, %60
  %103 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %104 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %185

108:                                              ; preds = %102
  %109 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %110 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 5
  %113 = sext i32 %112 to i64
  %114 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %115 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = icmp ugt i64 %113, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %108
  %120 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %121 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 5
  %124 = sext i32 %123 to i64
  %125 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %126 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = ptrtoint i8* %127 to i64
  %129 = sub i64 %124, %128
  store i64 %129, i64* %7, align 8
  br label %141

130:                                              ; preds = %108
  %131 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %132 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %136 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = sub i64 %134, %138
  %140 = add i64 %139, 5
  store i64 %140, i64* %7, align 8
  br label %141

141:                                              ; preds = %130, %119
  %142 = load i64, i64* %7, align 8
  %143 = icmp ule i64 %142, 2147483632
  br i1 %143, label %144, label %185

144:                                              ; preds = %141
  %145 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %146 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = bitcast i8* %147 to i32*
  store i32* %148, i32** %12, align 8
  %149 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %150 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @FillMemory(i8* %151, i32 %152, i32 204)
  %154 = load i32*, i32** %12, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %12, align 8
  store i32 255, i32* %154, align 4
  %156 = load i32*, i32** %12, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %12, align 8
  store i32 37, i32* %156, align 4
  %158 = load i32*, i32** %12, align 8
  %159 = bitcast i32* %158 to i64*
  store i64 0, i64* %159, align 8
  %160 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %161 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 4
  %165 = bitcast i32* %164 to i64*
  store i64 %162, i64* %165, align 8
  %166 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %167 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = ptrtoint i8* %168 to i64
  %170 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %171 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  %172 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %173 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %176 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = sub nsw i64 %174, %178
  %180 = load i64, i64* @JMP_32_SIZE, align 8
  %181 = sub nsw i64 %179, %180
  %182 = load i64*, i64** %4, align 8
  store i64 %181, i64* %182, align 8
  %183 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %184 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %183, i32 0, i32 2
  store i32 0, i32* %184, align 8
  br label %185

185:                                              ; preds = %22, %107, %144, %141
  ret void
}

declare dso_local i32 @VirtualQueryEx(i32, i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @GetSystemInfo(%struct.TYPE_5__*) #1

declare dso_local i8* @VirtualAlloc(i32, i32, i32, i32) #1

declare dso_local i32 @FillMemory(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
