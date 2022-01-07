; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_tags.c_mp_tags_replace.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_tags.c_mp_tags_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_tags = type { i32, i8**, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_tags_replace(%struct.mp_tags* %0, %struct.mp_tags* %1) #0 {
  %3 = alloca %struct.mp_tags*, align 8
  %4 = alloca %struct.mp_tags*, align 8
  %5 = alloca i32, align 4
  store %struct.mp_tags* %0, %struct.mp_tags** %3, align 8
  store %struct.mp_tags* %1, %struct.mp_tags** %4, align 8
  %6 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %7 = call i32 @mp_tags_clear(%struct.mp_tags* %6)
  %8 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %9 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %10 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %9, i32 0, i32 2
  %11 = load i8**, i8*** %10, align 8
  %12 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %13 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @MP_RESIZE_ARRAY(%struct.mp_tags* %8, i8** %11, i32 %14)
  %16 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %17 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %18 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %21 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MP_RESIZE_ARRAY(%struct.mp_tags* %16, i8** %19, i32 %22)
  %24 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %25 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %28 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %66, %2
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %32 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %29
  %36 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %37 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %38 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %37, i32 0, i32 2
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @talloc_strdup(%struct.mp_tags* %36, i8* %43)
  %45 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %46 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %45, i32 0, i32 2
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* %44, i8** %50, align 8
  %51 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %52 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %53 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @talloc_strdup(%struct.mp_tags* %51, i8* %58)
  %60 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %61 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %59, i8** %65, align 8
  br label %66

66:                                               ; preds = %35
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %29

69:                                               ; preds = %29
  ret void
}

declare dso_local i32 @mp_tags_clear(%struct.mp_tags*) #1

declare dso_local i32 @MP_RESIZE_ARRAY(%struct.mp_tags*, i8**, i32) #1

declare dso_local i8* @talloc_strdup(%struct.mp_tags*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
