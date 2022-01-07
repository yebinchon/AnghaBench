; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_inflate.c_parse_gzip_header.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_inflate.c_parse_gzip_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (...)* }

@UZLIB_DATA_ERROR = common dso_local global i32 0, align 4
@UZLIB_FEXTRA = common dso_local global i32 0, align 4
@UZLIB_FNAME = common dso_local global i32 0, align 4
@UZLIB_FCOMMENT = common dso_local global i32 0, align 4
@UZLIB_FHCRC = common dso_local global i32 0, align 4
@UZLIB_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @parse_gzip_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_gzip_header(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32 (...)*, i32 (...)** %6, align 8
  %8 = call i32 (...) %7()
  %9 = icmp ne i32 %8, 31
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32 (...)*, i32 (...)** %12, align 8
  %14 = call i32 (...) %13()
  %15 = icmp ne i32 %14, 139
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @UZLIB_DATA_ERROR, align 4
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %10
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = call i32 (...) %21()
  %23 = icmp ne i32 %22, 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @UZLIB_DATA_ERROR, align 4
  store i32 %25, i32* %2, align 4
  br label %74

26:                                               ; preds = %18
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = call i32 (...) %29()
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 224
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @UZLIB_DATA_ERROR, align 4
  store i32 %35, i32* %2, align 4
  br label %74

36:                                               ; preds = %26
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = call i32 @skip_bytes(%struct.TYPE_5__* %37, i32 6)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @UZLIB_FEXTRA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = call i32 @get_uint16(%struct.TYPE_5__* %45)
  %47 = call i32 @skip_bytes(%struct.TYPE_5__* %44, i32 %46)
  br label %48

48:                                               ; preds = %43, %36
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @UZLIB_FNAME, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = call i32 @skip_bytes(%struct.TYPE_5__* %54, i32 0)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @UZLIB_FCOMMENT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = call i32 @skip_bytes(%struct.TYPE_5__* %62, i32 0)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @UZLIB_FHCRC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = call i32 @skip_bytes(%struct.TYPE_5__* %70, i32 2)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* @UZLIB_OK, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %34, %24, %16
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @skip_bytes(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @get_uint16(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
