; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_bind.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_bind(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nn_sock*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @nn_global_hold_socket(%struct.nn_sock** %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @nn_global_create_ep(%struct.nn_sock* %16, i8* %17, i32 1)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @nn_slow(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %26 = call i32 @nn_global_rele_socket(%struct.nn_sock* %25)
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %33

29:                                               ; preds = %15
  %30 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %31 = call i32 @nn_global_rele_socket(%struct.nn_sock* %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %24, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @nn_global_hold_socket(%struct.nn_sock**, i32) #1

declare dso_local i32 @nn_global_create_ep(%struct.nn_sock*, i8*, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_global_rele_socket(%struct.nn_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
