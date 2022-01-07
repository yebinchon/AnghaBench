; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_text_node_bychar.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_text_node_bychar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_node = type { %struct.text_node*, %struct.TYPE_2__, %struct.text_node* }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.text_node* (%struct.text_node*, i8)* @text_node_bychar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.text_node* @text_node_bychar(%struct.text_node* %0, i8 signext %1) #0 {
  %3 = alloca %struct.text_node*, align 8
  %4 = alloca %struct.text_node*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.text_node*, align 8
  store %struct.text_node* %0, %struct.text_node** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.text_node*, %struct.text_node** %4, align 8
  %8 = getelementptr inbounds %struct.text_node, %struct.text_node* %7, i32 0, i32 2
  %9 = load %struct.text_node*, %struct.text_node** %8, align 8
  store %struct.text_node* %9, %struct.text_node** %6, align 8
  br label %10

10:                                               ; preds = %31, %2
  %11 = load %struct.text_node*, %struct.text_node** %6, align 8
  %12 = icmp ne %struct.text_node* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load %struct.text_node*, %struct.text_node** %6, align 8
  %15 = getelementptr inbounds %struct.text_node, %struct.text_node* %14, i32 0, i32 1
  %16 = call i32 @dstr_is_empty(%struct.TYPE_2__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %13
  %19 = load %struct.text_node*, %struct.text_node** %6, align 8
  %20 = getelementptr inbounds %struct.text_node, %struct.text_node* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load %struct.text_node*, %struct.text_node** %6, align 8
  store %struct.text_node* %30, %struct.text_node** %3, align 8
  br label %36

31:                                               ; preds = %18, %13
  %32 = load %struct.text_node*, %struct.text_node** %6, align 8
  %33 = getelementptr inbounds %struct.text_node, %struct.text_node* %32, i32 0, i32 0
  %34 = load %struct.text_node*, %struct.text_node** %33, align 8
  store %struct.text_node* %34, %struct.text_node** %6, align 8
  br label %10

35:                                               ; preds = %10
  store %struct.text_node* null, %struct.text_node** %3, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.text_node*, %struct.text_node** %3, align 8
  ret %struct.text_node* %37
}

declare dso_local i32 @dstr_is_empty(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
