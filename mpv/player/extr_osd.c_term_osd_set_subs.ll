; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_term_osd_set_subs.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_term_osd_set_subs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i8*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @term_osd_set_subs(%struct.MPContext* %0, i8* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12, %9, %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %22

22:                                               ; preds = %21, %12
  %23 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %24 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %29 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %31 ]
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %50

38:                                               ; preds = %32
  %39 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %40 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @talloc_free(i8* %41)
  %43 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @talloc_strdup(%struct.MPContext* %43, i8* %44)
  %46 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %47 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %49 = call i32 @term_osd_update(%struct.MPContext* %48)
  br label %50

50:                                               ; preds = %38, %37
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @talloc_strdup(%struct.MPContext*, i8*) #1

declare dso_local i32 @term_osd_update(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
