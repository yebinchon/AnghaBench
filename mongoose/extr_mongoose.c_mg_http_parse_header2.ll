; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_parse_header2.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_parse_header2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i32 }
%struct.altbuf = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_http_parse_header2(%struct.mg_str* %0, i8* %1, i8** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mg_str*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.altbuf, align 8
  store %struct.mg_str* %0, %struct.mg_str** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8**, i8*** %8, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @altbuf_init(%struct.altbuf* %10, i8* %12, i64 %13)
  %15 = load %struct.mg_str*, %struct.mg_str** %6, align 8
  %16 = icmp eq %struct.mg_str* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %46

18:                                               ; preds = %4
  %19 = load i8**, i8*** %8, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i64, i64* %9, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8**, i8*** %8, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %25, %22, %18
  %30 = load %struct.mg_str*, %struct.mg_str** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @mg_http_parse_header_internal(%struct.mg_str* %30, i8* %31, %struct.altbuf* %10)
  %33 = call i8* @altbuf_get_buf(%struct.altbuf* %10, i32 1)
  %34 = load i8**, i8*** %8, align 8
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.altbuf, %struct.altbuf* %10, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.altbuf, %struct.altbuf* %10, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 1
  br label %43

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i64 [ %41, %38 ], [ 0, %42 ]
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %17
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @altbuf_init(%struct.altbuf*, i8*, i64) #1

declare dso_local i32 @mg_http_parse_header_internal(%struct.mg_str*, i8*, %struct.altbuf*) #1

declare dso_local i8* @altbuf_get_buf(%struct.altbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
