; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_value_get_str_field.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_value_get_str_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_value = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_value*, i32, i8**, i8*)* @value_get_str_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @value_get_str_field(%struct.inf_value* %0, i32 %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inf_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inf_value* %0, %struct.inf_value** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.inf_value*, %struct.inf_value** %6, align 8
  %16 = call i8* @inf_value_get_value(%struct.inf_value* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %47

21:                                               ; preds = %4
  %22 = load i8*, i8** %10, align 8
  store i8* %22, i8** %11, align 8
  br label %23

23:                                               ; preds = %40, %21
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i8* @next_part(i8** %11, i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @copy_string(i8** %32, i8* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @heap_free(i8* %35)
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %47

38:                                               ; preds = %23
  %39 = load i8*, i8** %12, align 8
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %38
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %23, label %43

43:                                               ; preds = %40
  %44 = load i8**, i8*** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @copy_string(i8** %44, i8* %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %31, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i8* @inf_value_get_value(%struct.inf_value*) #1

declare dso_local i8* @next_part(i8**, i32) #1

declare dso_local i32 @copy_string(i8**, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
