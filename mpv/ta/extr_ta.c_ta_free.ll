; ModuleID = '/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_free.c'
source_filename = "/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ta_header = type { %struct.ta_header*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 (i8*)* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ta_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ta_header*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.ta_header* @get_header(i8* %4)
  store %struct.ta_header* %5, %struct.ta_header** %3, align 8
  %6 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %7 = icmp ne %struct.ta_header* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %60

9:                                                ; preds = %1
  %10 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %11 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %10, i32 0, i32 0
  %12 = load %struct.ta_header*, %struct.ta_header** %11, align 8
  %13 = icmp ne %struct.ta_header* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %16 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %15, i32 0, i32 0
  %17 = load %struct.ta_header*, %struct.ta_header** %16, align 8
  %18 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %17, i32 0, i32 3
  %19 = load i32 (i8*)*, i32 (i8*)** %18, align 8
  %20 = icmp ne i32 (i8*)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %23 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %22, i32 0, i32 0
  %24 = load %struct.ta_header*, %struct.ta_header** %23, align 8
  %25 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %24, i32 0, i32 3
  %26 = load i32 (i8*)*, i32 (i8*)** %25, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 %26(i8* %27)
  br label %29

29:                                               ; preds = %21, %14, %9
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @ta_free_children(i8* %30)
  %32 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %33 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %38 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %41 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %43, align 8
  %44 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %45 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %48 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %50, align 8
  br label %51

51:                                               ; preds = %36, %29
  %52 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %53 = call i32 @ta_dbg_remove(%struct.ta_header* %52)
  %54 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %55 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %54, i32 0, i32 0
  %56 = load %struct.ta_header*, %struct.ta_header** %55, align 8
  %57 = call i32 @free(%struct.ta_header* %56)
  %58 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %59 = call i32 @free(%struct.ta_header* %58)
  br label %60

60:                                               ; preds = %51, %8
  ret void
}

declare dso_local %struct.ta_header* @get_header(i8*) #1

declare dso_local i32 @ta_free_children(i8*) #1

declare dso_local i32 @ta_dbg_remove(%struct.ta_header*) #1

declare dso_local i32 @free(%struct.ta_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
