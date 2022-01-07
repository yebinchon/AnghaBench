; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_discriminator.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_discriminator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d_info*)* @d_discriminator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d_discriminator(%struct.d_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.d_info*, %struct.d_info** %3, align 8
  %7 = call signext i8 @d_peek_char(%struct.d_info* %6)
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 95
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = call i32 @d_advance(%struct.d_info* %12, i32 1)
  %14 = load %struct.d_info*, %struct.d_info** %3, align 8
  %15 = call signext i8 @d_peek_char(%struct.d_info* %14)
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 95
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load %struct.d_info*, %struct.d_info** %3, align 8
  %22 = call i32 @d_advance(%struct.d_info* %21, i32 1)
  br label %23

23:                                               ; preds = %18, %11
  %24 = load %struct.d_info*, %struct.d_info** %3, align 8
  %25 = call i32 @d_number(%struct.d_info* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %46

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 10
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.d_info*, %struct.d_info** %3, align 8
  %37 = call signext i8 @d_peek_char(%struct.d_info* %36)
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 95
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.d_info*, %struct.d_info** %3, align 8
  %42 = call i32 @d_advance(%struct.d_info* %41, i32 1)
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %46

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %32, %29
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %43, %28, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local i32 @d_number(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
