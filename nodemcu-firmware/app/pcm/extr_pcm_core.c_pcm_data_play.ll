; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/pcm/extr_pcm_core.c_pcm_data_play.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/pcm/extr_pcm_core.c_pcm_data_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64*, i64, i8*, i64 }

@FALSE = common dso_local global i8* null, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@LUA_TSTRING = common dso_local global i64 0, align 8
@PLATFORM_GPIO_HIGH = common dso_local global i32 0, align 4
@PLATFORM_GPIO_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcm_data_play(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i64, i64* %3, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %21
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %6, align 8
  store i8* null, i8** %8, align 8
  %23 = load i8*, i8** @FALSE, align 8
  %24 = ptrtoint i8* %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = call i32* (...) @lua_getstate()
  store i32* %25, i32** %10, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LUA_NOREF, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %84

36:                                               ; preds = %30
  %37 = load i32*, i32** %10, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dispatch_callback(i32* %37, i32 %40, i64 %43, i32 1)
  %45 = load i64, i64* @TRUE, align 8
  store i64 %45, i64* %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i64 @lua_type(i32* %46, i32 -1)
  %48 = load i64, i64* @LUA_TSTRING, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %36
  %51 = load i32*, i32** %10, align 8
  %52 = call i8* @lua_tolstring(i32* %51, i32 -1, i64* %7)
  store i8* %52, i8** %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %53, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %50
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @malloc(i64 %59)
  %61 = inttoptr i64 %60 to i64*
  store i64* %61, i64** %11, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = call i32 @free(i64* %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i64* %78, i64** %80, align 8
  br label %81

81:                                               ; preds = %74, %58
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %36
  br label %84

84:                                               ; preds = %83, %30, %2
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %147

87:                                               ; preds = %84
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  br label %99

97:                                               ; preds = %87
  %98 = load i64, i64* %7, align 8
  br label %99

99:                                               ; preds = %97, %93
  %100 = phi i64 [ %96, %93 ], [ %98, %97 ]
  store i64 %100, i64* %12, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @memcpy(i64* %103, i8* %104, i64 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load i8*, i8** @FALSE, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @PLATFORM_GPIO_HIGH, align 4
  %116 = call i32 @dbg_platform_gpio_write(i32 %115)
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @lua_pop(i32* %117, i32 1)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %146

123:                                              ; preds = %99
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = xor i64 %126, 1
  store i64 %127, i64* %13, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i64, i64* %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %143

136:                                              ; preds = %123
  %137 = load i32, i32* @PLATFORM_GPIO_LOW, align 4
  %138 = call i32 @dbg_platform_gpio_write(i32 %137)
  %139 = load i64, i64* %13, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %3, align 8
  call void @pcm_data_play(i64 %142, i32 0)
  br label %143

143:                                              ; preds = %136, %123
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i32 0, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %99
  br label %172

147:                                              ; preds = %84
  %148 = load i32, i32* @PLATFORM_GPIO_HIGH, align 4
  %149 = call i32 @dbg_platform_gpio_write(i32 %148)
  %150 = load i64, i64* %9, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32*, i32** %10, align 8
  %154 = call i32 @lua_pop(i32* %153, i32 1)
  br label %155

155:                                              ; preds = %152, %147
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %155
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  store i32 -1, i32* %162, align 8
  %163 = load i32*, i32** %10, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @dispatch_callback(i32* %163, i32 %166, i64 %169, i32 0)
  br label %171

171:                                              ; preds = %160, %155
  br label %172

172:                                              ; preds = %171, %146
  ret void
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @dispatch_callback(i32*, i32, i64, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32 @dbg_platform_gpio_write(i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
