; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_tr_free_pattern.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_tr_free_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_pattern = type { i64, %struct.tr_pattern* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tr_pattern*)* @tr_free_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_free_pattern(i32* %0, %struct.tr_pattern* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tr_pattern*, align 8
  %5 = alloca %struct.tr_pattern*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.tr_pattern* %1, %struct.tr_pattern** %4, align 8
  br label %6

6:                                                ; preds = %21, %2
  %7 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %8 = icmp ne %struct.tr_pattern* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %11 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %10, i32 0, i32 1
  %12 = load %struct.tr_pattern*, %struct.tr_pattern** %11, align 8
  store %struct.tr_pattern* %12, %struct.tr_pattern** %5, align 8
  %13 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %14 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %20 = call i32 @mrb_free(i32* %18, %struct.tr_pattern* %19)
  br label %21

21:                                               ; preds = %17, %9
  %22 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  store %struct.tr_pattern* %22, %struct.tr_pattern** %4, align 8
  br label %6

23:                                               ; preds = %6
  ret void
}

declare dso_local i32 @mrb_free(i32*, %struct.tr_pattern*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
