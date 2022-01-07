; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_do.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statement = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecpg_do(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.statement*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.statement* null, %struct.statement** %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i8*, i8** %13, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i8*, i8** %16, align 8
  %26 = load i32, i32* %17, align 4
  %27 = call i32 @ecpg_do_prologue(i32 %19, i32 %20, i32 %21, i8* %22, i32 %23, i32 %24, i8* %25, i32 %26, %struct.statement** %18)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %8
  br label %53

30:                                               ; preds = %8
  %31 = load %struct.statement*, %struct.statement** %18, align 8
  %32 = call i32 @ecpg_build_params(%struct.statement* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %53

35:                                               ; preds = %30
  %36 = load %struct.statement*, %struct.statement** %18, align 8
  %37 = call i32 @ecpg_autostart_transaction(%struct.statement* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %53

40:                                               ; preds = %35
  %41 = load %struct.statement*, %struct.statement** %18, align 8
  %42 = call i32 @ecpg_execute(%struct.statement* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %53

45:                                               ; preds = %40
  %46 = load %struct.statement*, %struct.statement** %18, align 8
  %47 = call i32 @ecpg_process_output(%struct.statement* %46, i32 1)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %53

50:                                               ; preds = %45
  %51 = load %struct.statement*, %struct.statement** %18, align 8
  %52 = call i32 @ecpg_do_epilogue(%struct.statement* %51)
  store i32 1, i32* %9, align 4
  br label %56

53:                                               ; preds = %49, %44, %39, %34, %29
  %54 = load %struct.statement*, %struct.statement** %18, align 8
  %55 = call i32 @ecpg_do_epilogue(%struct.statement* %54)
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @ecpg_do_prologue(i32, i32, i32, i8*, i32, i32, i8*, i32, %struct.statement**) #1

declare dso_local i32 @ecpg_build_params(%struct.statement*) #1

declare dso_local i32 @ecpg_autostart_transaction(%struct.statement*) #1

declare dso_local i32 @ecpg_execute(%struct.statement*) #1

declare dso_local i32 @ecpg_process_output(%struct.statement*, i32) #1

declare dso_local i32 @ecpg_do_epilogue(%struct.statement*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
