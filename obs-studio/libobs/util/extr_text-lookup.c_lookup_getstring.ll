; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_getstring.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_getstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_node = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, %struct.text_node*)* @lookup_getstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_getstring(i8* %0, i8** %1, %struct.text_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.text_node*, align 8
  %8 = alloca %struct.text_node*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.text_node* %2, %struct.text_node** %7, align 8
  %10 = load %struct.text_node*, %struct.text_node** %7, align 8
  %11 = icmp ne %struct.text_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

13:                                               ; preds = %3
  %14 = load %struct.text_node*, %struct.text_node** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.text_node* @text_node_byname(%struct.text_node* %14, i8* %15)
  store %struct.text_node* %16, %struct.text_node** %8, align 8
  %17 = load %struct.text_node*, %struct.text_node** %8, align 8
  %18 = icmp ne %struct.text_node* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %50

20:                                               ; preds = %13
  %21 = load %struct.text_node*, %struct.text_node** %8, align 8
  %22 = getelementptr inbounds %struct.text_node, %struct.text_node* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %9, align 1
  %30 = load i8, i8* %9, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load i8*, i8** %5, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load %struct.text_node*, %struct.text_node** %8, align 8
  %36 = call i32 @lookup_getstring(i8* %33, i8** %34, %struct.text_node* %35)
  store i32 %36, i32* %4, align 4
  br label %50

37:                                               ; preds = %20
  %38 = load %struct.text_node*, %struct.text_node** %8, align 8
  %39 = getelementptr inbounds %struct.text_node, %struct.text_node* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.text_node*, %struct.text_node** %8, align 8
  %45 = getelementptr inbounds %struct.text_node, %struct.text_node* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %6, align 8
  store i8* %48, i8** %49, align 8
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %42, %32, %19, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.text_node* @text_node_byname(%struct.text_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
