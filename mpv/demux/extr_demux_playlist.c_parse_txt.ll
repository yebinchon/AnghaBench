; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_parse_txt.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_parse_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl_parser = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Reading plaintext playlist.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl_parser*)* @parse_txt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_txt(%struct.pl_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pl_parser*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  store %struct.pl_parser* %0, %struct.pl_parser** %3, align 8
  %5 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %6 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %12 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %39

16:                                               ; preds = %10
  %17 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %18 = call i32 @MP_WARN(%struct.pl_parser* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %33, %32, %16
  %20 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %21 = call i32 @pl_eof(%struct.pl_parser* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %26 = call i32 @pl_get_line(%struct.pl_parser* %25)
  %27 = call i64 @bstr_strip(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %19

33:                                               ; preds = %24
  %34 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pl_add(%struct.pl_parser* %34, i64 %36)
  br label %19

38:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %15, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @MP_WARN(%struct.pl_parser*, i8*) #1

declare dso_local i32 @pl_eof(%struct.pl_parser*) #1

declare dso_local i64 @bstr_strip(i32) #1

declare dso_local i32 @pl_get_line(%struct.pl_parser*) #1

declare dso_local i32 @pl_add(%struct.pl_parser*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
