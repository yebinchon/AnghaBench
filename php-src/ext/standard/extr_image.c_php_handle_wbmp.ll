; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_wbmp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_wbmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfxinfo* (i32*)* @php_handle_wbmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfxinfo* @php_handle_wbmp(i32* %0) #0 {
  %2 = alloca %struct.gfxinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gfxinfo*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i64 @ecalloc(i32 1, i32 4)
  %6 = inttoptr i64 %5 to %struct.gfxinfo*
  store %struct.gfxinfo* %6, %struct.gfxinfo** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @php_get_wbmp(i32* %7, %struct.gfxinfo** %4, i32 0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %12 = call i32 @efree(%struct.gfxinfo* %11)
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %15

13:                                               ; preds = %1
  %14 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  store %struct.gfxinfo* %14, %struct.gfxinfo** %2, align 8
  br label %15

15:                                               ; preds = %13, %10
  %16 = load %struct.gfxinfo*, %struct.gfxinfo** %2, align 8
  ret %struct.gfxinfo* %16
}

declare dso_local i64 @ecalloc(i32, i32) #1

declare dso_local i32 @php_get_wbmp(i32*, %struct.gfxinfo**, i32) #1

declare dso_local i32 @efree(%struct.gfxinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
