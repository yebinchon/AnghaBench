; ModuleID = '/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio.c_nmstermio_get_char.c'
source_filename = "/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio.c_nmstermio_get_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @nmstermio_get_char() #0 {
  %1 = alloca %struct.timespec, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 50, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sdiv i32 %4, 1000
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %2, align 4
  %8 = srem i32 %7, 1000
  %9 = mul nsw i32 %8, 1000000
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  br label %11

11:                                               ; preds = %15, %0
  %12 = call i32 (...) @getchar()
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @EOF, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @nanosleep(%struct.timespec* %1, i32* null)
  br label %11

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
