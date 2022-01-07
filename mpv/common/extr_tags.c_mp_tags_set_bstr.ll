; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_tags.c_mp_tags_set_bstr.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_tags.c_mp_tags_set_bstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_tags = type { i32, i8**, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_tags_set_bstr(%struct.mp_tags* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mp_tags*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mp_tags* %0, %struct.mp_tags** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %44, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %11 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %17 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %16, i32 0, i32 2
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @bstrcasecmp0(i32 %15, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %14
  %26 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %27 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @talloc_free(i8* %32)
  %34 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @bstrto0(%struct.mp_tags* %34, i32 %35)
  %37 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %38 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %36, i8** %42, align 8
  br label %92

43:                                               ; preds = %14
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %8

47:                                               ; preds = %8
  %48 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %49 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %50 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %53 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  %56 = call i32 @MP_RESIZE_ARRAY(%struct.mp_tags* %48, i8** %51, i32 %55)
  %57 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %58 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %59 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %62 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  %65 = call i32 @MP_RESIZE_ARRAY(%struct.mp_tags* %57, i8** %60, i32 %64)
  %66 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i8* @bstrto0(%struct.mp_tags* %66, i32 %67)
  %69 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %70 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %69, i32 0, i32 2
  %71 = load i8**, i8*** %70, align 8
  %72 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %73 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %71, i64 %75
  store i8* %68, i8** %76, align 8
  %77 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i8* @bstrto0(%struct.mp_tags* %77, i32 %78)
  %80 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %81 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %84 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %82, i64 %86
  store i8* %79, i8** %87, align 8
  %88 = load %struct.mp_tags*, %struct.mp_tags** %4, align 8
  %89 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %47, %25
  ret void
}

declare dso_local i64 @bstrcasecmp0(i32, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @bstrto0(%struct.mp_tags*, i32) #1

declare dso_local i32 @MP_RESIZE_ARRAY(%struct.mp_tags*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
