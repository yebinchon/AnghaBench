; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_json.c_read_id.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_json.c_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }

@MPV_FORMAT_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mpv_node*, i8**)* @read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_id(i8* %0, %struct.mpv_node* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mpv_node*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.mpv_node* %1, %struct.mpv_node** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8**, i8*** %7, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8**, i8*** %7, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i32 @mp_isalpha(i8 signext %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 95
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %73

23:                                               ; preds = %16, %3
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @mp_isalnum(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8**, i8*** %7, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 95
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ true, %24 ], [ %35, %30 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = load i8**, i8*** %7, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %39, align 8
  br label %24

42:                                               ; preds = %36
  %43 = load i8**, i8*** %7, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i8**, i8*** %7, align 8
  %50 = load i8*, i8** %49, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8**, i8*** %7, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %51, align 8
  br label %65

54:                                               ; preds = %42
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @talloc_strndup(i8* %55, i8* %56, i32 %63)
  store i8* %64, i8** %8, align 8
  br label %65

65:                                               ; preds = %54, %48
  %66 = load i32, i32* @MPV_FORMAT_STRING, align 4
  %67 = load %struct.mpv_node*, %struct.mpv_node** %6, align 8
  %68 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.mpv_node*, %struct.mpv_node** %6, align 8
  %71 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %65, %22
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @mp_isalpha(i8 signext) #1

declare dso_local i64 @mp_isalnum(i8 signext) #1

declare dso_local i8* @talloc_strndup(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
