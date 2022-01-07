; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_uri.c_coap_split_path.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_uri.c_coap_split_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pkt_scr = type { i32, i32, i32*, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [3 x i8] c"?#\00", align 1
@write_option = common dso_local global i32 0, align 4
@COAP_OPTION_URI_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_split_path(i32* %0, %struct.TYPE_5__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pkt_scr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = getelementptr inbounds %struct.pkt_scr, %struct.pkt_scr* %9, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = ptrtoint %struct.TYPE_5__* %13 to i32
  store i32 %14, i32* %12, align 8
  %15 = getelementptr inbounds %struct.pkt_scr, %struct.pkt_scr* %9, i32 0, i32 1
  %16 = load i32*, i32** %5, align 8
  %17 = ptrtoint i32* %16 to i32
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.pkt_scr, %struct.pkt_scr* %9, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.pkt_scr, %struct.pkt_scr* %9, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @coap_parse_iterator_init(i8* %20, i64 %21, i8 signext 47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32* %10)
  %23 = load i32, i32* @write_option, align 4
  %24 = call i32 @coap_split_path_impl(i32* %10, i32 %23, %struct.pkt_scr* %9)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %44, %4
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.pkt_scr, %struct.pkt_scr* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i32, i32* @COAP_OPTION_URI_PATH, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %31, i32* %43, align 4
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %25

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.pkt_scr, %struct.pkt_scr* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  ret i32 %49
}

declare dso_local i32 @coap_parse_iterator_init(i8*, i64, i8 signext, i8*, i32, i32*) #1

declare dso_local i32 @coap_split_path_impl(i32*, i32, %struct.pkt_scr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
