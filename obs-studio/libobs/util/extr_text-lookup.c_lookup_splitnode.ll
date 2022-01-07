; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_splitnode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_splitnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_leaf = type { i32 }
%struct.text_node = type { %struct.text_leaf*, %struct.TYPE_3__, %struct.text_node* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.text_leaf*, %struct.text_node*)* @lookup_splitnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup_splitnode(i8* %0, i64 %1, %struct.text_leaf* %2, %struct.text_node* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.text_leaf*, align 8
  %8 = alloca %struct.text_node*, align 8
  %9 = alloca %struct.text_node*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.text_leaf* %2, %struct.text_leaf** %7, align 8
  store %struct.text_node* %3, %struct.text_node** %8, align 8
  %10 = call %struct.text_node* @bzalloc(i32 24)
  store %struct.text_node* %10, %struct.text_node** %9, align 8
  %11 = load %struct.text_node*, %struct.text_node** %9, align 8
  %12 = getelementptr inbounds %struct.text_node, %struct.text_node* %11, i32 0, i32 1
  %13 = load %struct.text_node*, %struct.text_node** %8, align 8
  %14 = getelementptr inbounds %struct.text_node, %struct.text_node* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %16, %17
  %19 = call i32 @dstr_copy(%struct.TYPE_3__* %12, i64 %18)
  %20 = load %struct.text_node*, %struct.text_node** %8, align 8
  %21 = getelementptr inbounds %struct.text_node, %struct.text_node* %20, i32 0, i32 0
  %22 = load %struct.text_leaf*, %struct.text_leaf** %21, align 8
  %23 = load %struct.text_node*, %struct.text_node** %9, align 8
  %24 = getelementptr inbounds %struct.text_node, %struct.text_node* %23, i32 0, i32 0
  store %struct.text_leaf* %22, %struct.text_leaf** %24, align 8
  %25 = load %struct.text_node*, %struct.text_node** %8, align 8
  %26 = getelementptr inbounds %struct.text_node, %struct.text_node* %25, i32 0, i32 2
  %27 = load %struct.text_node*, %struct.text_node** %26, align 8
  %28 = load %struct.text_node*, %struct.text_node** %9, align 8
  %29 = getelementptr inbounds %struct.text_node, %struct.text_node* %28, i32 0, i32 2
  store %struct.text_node* %27, %struct.text_node** %29, align 8
  %30 = load %struct.text_node*, %struct.text_node** %9, align 8
  %31 = load %struct.text_node*, %struct.text_node** %8, align 8
  %32 = getelementptr inbounds %struct.text_node, %struct.text_node* %31, i32 0, i32 2
  store %struct.text_node* %30, %struct.text_node** %32, align 8
  %33 = load %struct.text_node*, %struct.text_node** %8, align 8
  %34 = getelementptr inbounds %struct.text_node, %struct.text_node* %33, i32 0, i32 1
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @dstr_resize(%struct.TYPE_3__* %34, i64 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %4
  %44 = load %struct.text_node*, %struct.text_node** %8, align 8
  %45 = getelementptr inbounds %struct.text_node, %struct.text_node* %44, i32 0, i32 0
  store %struct.text_leaf* null, %struct.text_leaf** %45, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load %struct.text_leaf*, %struct.text_leaf** %7, align 8
  %50 = load %struct.text_node*, %struct.text_node** %8, align 8
  %51 = call i32 @lookup_createsubnode(i8* %48, %struct.text_leaf* %49, %struct.text_node* %50)
  br label %56

52:                                               ; preds = %4
  %53 = load %struct.text_leaf*, %struct.text_leaf** %7, align 8
  %54 = load %struct.text_node*, %struct.text_node** %8, align 8
  %55 = getelementptr inbounds %struct.text_node, %struct.text_node* %54, i32 0, i32 0
  store %struct.text_leaf* %53, %struct.text_leaf** %55, align 8
  br label %56

56:                                               ; preds = %52, %43
  ret void
}

declare dso_local %struct.text_node* @bzalloc(i32) #1

declare dso_local i32 @dstr_copy(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @dstr_resize(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @lookup_createsubnode(i8*, %struct.text_leaf*, %struct.text_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
