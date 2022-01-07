; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ECPGget_var.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ECPGget_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.var_list = type { i32, i8*, %struct.var_list* }

@ivlist = common dso_local global %struct.var_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ECPGget_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.var_list*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.var_list*, %struct.var_list** @ivlist, align 8
  store %struct.var_list* %4, %struct.var_list** %3, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load %struct.var_list*, %struct.var_list** %3, align 8
  %7 = icmp ne %struct.var_list* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct.var_list*, %struct.var_list** %3, align 8
  %10 = getelementptr inbounds %struct.var_list, %struct.var_list* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %11, %12
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i1 [ false, %5 ], [ %13, %8 ]
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.var_list*, %struct.var_list** %3, align 8
  %19 = getelementptr inbounds %struct.var_list, %struct.var_list* %18, i32 0, i32 2
  %20 = load %struct.var_list*, %struct.var_list** %19, align 8
  store %struct.var_list* %20, %struct.var_list** %3, align 8
  br label %5

21:                                               ; preds = %14
  %22 = load %struct.var_list*, %struct.var_list** %3, align 8
  %23 = icmp ne %struct.var_list* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.var_list*, %struct.var_list** %3, align 8
  %26 = getelementptr inbounds %struct.var_list, %struct.var_list* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i8* [ %27, %24 ], [ null, %28 ]
  ret i8* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
