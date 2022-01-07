; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_createsubnode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_createsubnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_leaf = type { i32 }
%struct.text_node = type { %struct.text_node*, i32, %struct.text_node*, %struct.text_leaf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.text_leaf*, %struct.text_node*)* @lookup_createsubnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup_createsubnode(i8* %0, %struct.text_leaf* %1, %struct.text_node* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.text_leaf*, align 8
  %6 = alloca %struct.text_node*, align 8
  %7 = alloca %struct.text_node*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.text_leaf* %1, %struct.text_leaf** %5, align 8
  store %struct.text_node* %2, %struct.text_node** %6, align 8
  %8 = call %struct.text_node* @bzalloc(i32 32)
  store %struct.text_node* %8, %struct.text_node** %7, align 8
  %9 = load %struct.text_leaf*, %struct.text_leaf** %5, align 8
  %10 = load %struct.text_node*, %struct.text_node** %7, align 8
  %11 = getelementptr inbounds %struct.text_node, %struct.text_node* %10, i32 0, i32 3
  store %struct.text_leaf* %9, %struct.text_leaf** %11, align 8
  %12 = load %struct.text_node*, %struct.text_node** %6, align 8
  %13 = getelementptr inbounds %struct.text_node, %struct.text_node* %12, i32 0, i32 0
  %14 = load %struct.text_node*, %struct.text_node** %13, align 8
  %15 = load %struct.text_node*, %struct.text_node** %7, align 8
  %16 = getelementptr inbounds %struct.text_node, %struct.text_node* %15, i32 0, i32 2
  store %struct.text_node* %14, %struct.text_node** %16, align 8
  %17 = load %struct.text_node*, %struct.text_node** %7, align 8
  %18 = getelementptr inbounds %struct.text_node, %struct.text_node* %17, i32 0, i32 1
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @dstr_copy(i32* %18, i8* %19)
  %21 = load %struct.text_node*, %struct.text_node** %7, align 8
  %22 = load %struct.text_node*, %struct.text_node** %6, align 8
  %23 = getelementptr inbounds %struct.text_node, %struct.text_node* %22, i32 0, i32 0
  store %struct.text_node* %21, %struct.text_node** %23, align 8
  ret void
}

declare dso_local %struct.text_node* @bzalloc(i32) #1

declare dso_local i32 @dstr_copy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
