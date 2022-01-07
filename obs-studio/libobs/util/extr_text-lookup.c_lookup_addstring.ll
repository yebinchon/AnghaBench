; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_addstring.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_addstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_leaf = type { i32 }
%struct.text_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.text_leaf*, %struct.text_node*)* @lookup_addstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup_addstring(i8* %0, %struct.text_leaf* %1, %struct.text_node* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.text_leaf*, align 8
  %6 = alloca %struct.text_node*, align 8
  %7 = alloca %struct.text_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.text_leaf* %1, %struct.text_leaf** %5, align 8
  store %struct.text_node* %2, %struct.text_node** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.text_node*, %struct.text_node** %6, align 8
  %19 = load %struct.text_leaf*, %struct.text_leaf** %5, align 8
  %20 = call i32 @lookup_replaceleaf(%struct.text_node* %18, %struct.text_leaf* %19)
  br label %109

21:                                               ; preds = %13
  %22 = load %struct.text_node*, %struct.text_node** %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call %struct.text_node* @text_node_bychar(%struct.text_node* %22, i8 signext %24)
  store %struct.text_node* %25, %struct.text_node** %7, align 8
  %26 = load %struct.text_node*, %struct.text_node** %7, align 8
  %27 = icmp ne %struct.text_node* %26, null
  br i1 %27, label %28, label %104

28:                                               ; preds = %21
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %81, %28
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.text_node*, %struct.text_node** %7, align 8
  %32 = getelementptr inbounds %struct.text_node, %struct.text_node* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %84

36:                                               ; preds = %29
  %37 = load %struct.text_node*, %struct.text_node** %7, align 8
  %38 = getelementptr inbounds %struct.text_node, %struct.text_node* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %9, align 1
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %10, align 1
  %48 = load i8, i8* %9, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 65
  br i1 %50, label %51, label %60

51:                                               ; preds = %36
  %52 = load i8, i8* %9, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sle i32 %53, 90
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i8, i8* %9, align 1
  %57 = sext i8 %56 to i32
  %58 = add nsw i32 %57, 32
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %9, align 1
  br label %60

60:                                               ; preds = %55, %51, %36
  %61 = load i8, i8* %10, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sge i32 %62, 65
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sle i32 %66, 90
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8, i8* %10, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, 32
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %10, align 1
  br label %73

73:                                               ; preds = %68, %64, %60
  %74 = load i8, i8* %9, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* %10, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %84

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %8, align 8
  br label %29

84:                                               ; preds = %79, %29
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.text_node*, %struct.text_node** %7, align 8
  %87 = getelementptr inbounds %struct.text_node, %struct.text_node* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %85, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i8*, i8** %4, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load %struct.text_leaf*, %struct.text_leaf** %5, align 8
  %96 = load %struct.text_node*, %struct.text_node** %7, align 8
  call void @lookup_addstring(i8* %94, %struct.text_leaf* %95, %struct.text_node* %96)
  br label %109

97:                                               ; preds = %84
  %98 = load i8*, i8** %4, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.text_leaf*, %struct.text_leaf** %5, align 8
  %101 = load %struct.text_node*, %struct.text_node** %7, align 8
  %102 = call i32 @lookup_splitnode(i8* %98, i64 %99, %struct.text_leaf* %100, %struct.text_node* %101)
  br label %103

103:                                              ; preds = %97
  br label %109

104:                                              ; preds = %21
  %105 = load i8*, i8** %4, align 8
  %106 = load %struct.text_leaf*, %struct.text_leaf** %5, align 8
  %107 = load %struct.text_node*, %struct.text_node** %6, align 8
  %108 = call i32 @lookup_createsubnode(i8* %105, %struct.text_leaf* %106, %struct.text_node* %107)
  br label %109

109:                                              ; preds = %17, %91, %104, %103
  ret void
}

declare dso_local i32 @lookup_replaceleaf(%struct.text_node*, %struct.text_leaf*) #1

declare dso_local %struct.text_node* @text_node_bychar(%struct.text_node*, i8 signext) #1

declare dso_local i32 @lookup_splitnode(i8*, i64, %struct.text_leaf*, %struct.text_node*) #1

declare dso_local i32 @lookup_createsubnode(i8*, %struct.text_leaf*, %struct.text_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
