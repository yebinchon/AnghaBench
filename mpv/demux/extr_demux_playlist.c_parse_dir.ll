; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_parse_dir.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_parse_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl_parser = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.stat = type { i32 }

@MAX_DIR_STACK = common dso_local global i32 0, align 4
@cmp_filename = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl_parser*)* @parse_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dir(%struct.pl_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pl_parser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pl_parser* %0, %struct.pl_parser** %3, align 8
  %10 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %11 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %76

17:                                               ; preds = %1
  %18 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %19 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %76

23:                                               ; preds = %17
  %24 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %25 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %26 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bstr0(i32 %29)
  %31 = call i8* @mp_file_get_path(%struct.pl_parser* %24, i32 %30)
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %76

35:                                               ; preds = %23
  store i8** null, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %36 = load i32, i32* @MAX_DIR_STACK, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %7, align 8
  %39 = alloca %struct.stat, i64 %37, align 16
  store i64 %37, i64* %8, align 8
  %40 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @scan_dir(%struct.pl_parser* %40, i8* %41, %struct.stat* %39, i32 0, i8*** %5, i32* %6)
  %43 = load i8**, i8*** %5, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @cmp_filename, align 4
  %49 = call i32 @qsort(i8** %46, i32 %47, i32 8, i32 %48)
  br label %50

50:                                               ; preds = %45, %35
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %57 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @playlist_add_file(i32 %58, i8* %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %51

68:                                               ; preds = %51
  %69 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %70 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 0, i32 -1
  store i32 %74, i32* %2, align 4
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  br label %76

76:                                               ; preds = %68, %34, %22, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i8* @mp_file_get_path(%struct.pl_parser*, i32) #1

declare dso_local i32 @bstr0(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @scan_dir(%struct.pl_parser*, i8*, %struct.stat*, i32, i8***, i32*) #1

declare dso_local i32 @qsort(i8**, i32, i32, i32) #1

declare dso_local i32 @playlist_add_file(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
