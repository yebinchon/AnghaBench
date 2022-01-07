; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_text_node_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_text_node_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_node = type { i64, i32, %struct.text_node*, %struct.text_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.text_node*)* @text_node_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @text_node_destroy(%struct.text_node* %0) #0 {
  %2 = alloca %struct.text_node*, align 8
  %3 = alloca %struct.text_node*, align 8
  %4 = alloca %struct.text_node*, align 8
  store %struct.text_node* %0, %struct.text_node** %2, align 8
  %5 = load %struct.text_node*, %struct.text_node** %2, align 8
  %6 = icmp ne %struct.text_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.text_node*, %struct.text_node** %2, align 8
  %10 = getelementptr inbounds %struct.text_node, %struct.text_node* %9, i32 0, i32 3
  %11 = load %struct.text_node*, %struct.text_node** %10, align 8
  store %struct.text_node* %11, %struct.text_node** %3, align 8
  br label %12

12:                                               ; preds = %15, %8
  %13 = load %struct.text_node*, %struct.text_node** %3, align 8
  %14 = icmp ne %struct.text_node* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.text_node*, %struct.text_node** %3, align 8
  store %struct.text_node* %16, %struct.text_node** %4, align 8
  %17 = load %struct.text_node*, %struct.text_node** %3, align 8
  %18 = getelementptr inbounds %struct.text_node, %struct.text_node* %17, i32 0, i32 2
  %19 = load %struct.text_node*, %struct.text_node** %18, align 8
  store %struct.text_node* %19, %struct.text_node** %3, align 8
  %20 = load %struct.text_node*, %struct.text_node** %4, align 8
  call void @text_node_destroy(%struct.text_node* %20)
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.text_node*, %struct.text_node** %2, align 8
  %23 = getelementptr inbounds %struct.text_node, %struct.text_node* %22, i32 0, i32 1
  %24 = call i32 @dstr_free(i32* %23)
  %25 = load %struct.text_node*, %struct.text_node** %2, align 8
  %26 = getelementptr inbounds %struct.text_node, %struct.text_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.text_node*, %struct.text_node** %2, align 8
  %31 = getelementptr inbounds %struct.text_node, %struct.text_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @text_leaf_destroy(i64 %32)
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.text_node*, %struct.text_node** %2, align 8
  %36 = call i32 @bfree(%struct.text_node* %35)
  br label %37

37:                                               ; preds = %34, %7
  ret void
}

declare dso_local i32 @dstr_free(i32*) #1

declare dso_local i32 @text_leaf_destroy(i64) #1

declare dso_local i32 @bfree(%struct.text_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
