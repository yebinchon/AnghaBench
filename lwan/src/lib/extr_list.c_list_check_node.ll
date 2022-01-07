; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_list.c_list_check_node.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_list.c_list_check_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_node = type { %struct.list_node*, %struct.list_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list_node* @list_check_node(%struct.list_node* %0, i8* %1) #0 {
  %3 = alloca %struct.list_node*, align 8
  %4 = alloca %struct.list_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.list_node*, align 8
  %7 = alloca %struct.list_node*, align 8
  %8 = alloca i32, align 4
  store %struct.list_node* %0, %struct.list_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.list_node*, %struct.list_node** %4, align 8
  store %struct.list_node* %9, %struct.list_node** %6, align 8
  %10 = load %struct.list_node*, %struct.list_node** %4, align 8
  %11 = getelementptr inbounds %struct.list_node, %struct.list_node* %10, i32 0, i32 1
  %12 = load %struct.list_node*, %struct.list_node** %11, align 8
  store %struct.list_node* %12, %struct.list_node** %7, align 8
  br label %13

13:                                               ; preds = %32, %2
  %14 = load %struct.list_node*, %struct.list_node** %7, align 8
  %15 = load %struct.list_node*, %struct.list_node** %4, align 8
  %16 = icmp ne %struct.list_node* %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = load %struct.list_node*, %struct.list_node** %7, align 8
  %21 = getelementptr inbounds %struct.list_node, %struct.list_node* %20, i32 0, i32 0
  %22 = load %struct.list_node*, %struct.list_node** %21, align 8
  %23 = load %struct.list_node*, %struct.list_node** %6, align 8
  %24 = icmp ne %struct.list_node* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.list_node*, %struct.list_node** %4, align 8
  %28 = load %struct.list_node*, %struct.list_node** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.list_node* @corrupt(i8* %26, %struct.list_node* %27, %struct.list_node* %28, i32 %29)
  store %struct.list_node* %30, %struct.list_node** %3, align 8
  br label %50

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.list_node*, %struct.list_node** %7, align 8
  store %struct.list_node* %33, %struct.list_node** %6, align 8
  %34 = load %struct.list_node*, %struct.list_node** %7, align 8
  %35 = getelementptr inbounds %struct.list_node, %struct.list_node* %34, i32 0, i32 1
  %36 = load %struct.list_node*, %struct.list_node** %35, align 8
  store %struct.list_node* %36, %struct.list_node** %7, align 8
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.list_node*, %struct.list_node** %4, align 8
  %39 = getelementptr inbounds %struct.list_node, %struct.list_node* %38, i32 0, i32 0
  %40 = load %struct.list_node*, %struct.list_node** %39, align 8
  %41 = load %struct.list_node*, %struct.list_node** %6, align 8
  %42 = icmp ne %struct.list_node* %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.list_node*, %struct.list_node** %4, align 8
  %46 = load %struct.list_node*, %struct.list_node** %4, align 8
  %47 = call %struct.list_node* @corrupt(i8* %44, %struct.list_node* %45, %struct.list_node* %46, i32 0)
  store %struct.list_node* %47, %struct.list_node** %3, align 8
  br label %50

48:                                               ; preds = %37
  %49 = load %struct.list_node*, %struct.list_node** %4, align 8
  store %struct.list_node* %49, %struct.list_node** %3, align 8
  br label %50

50:                                               ; preds = %48, %43, %25
  %51 = load %struct.list_node*, %struct.list_node** %3, align 8
  ret %struct.list_node* %51
}

declare dso_local %struct.list_node* @corrupt(i8*, %struct.list_node*, %struct.list_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
