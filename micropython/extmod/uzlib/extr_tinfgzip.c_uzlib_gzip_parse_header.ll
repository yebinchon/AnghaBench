; ModuleID = '/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinfgzip.c_uzlib_gzip_parse_header.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinfgzip.c_uzlib_gzip_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@TINF_DATA_ERROR = common dso_local global i32 0, align 4
@FEXTRA = common dso_local global i8 0, align 1
@FNAME = common dso_local global i8 0, align 1
@FCOMMENT = common dso_local global i8 0, align 1
@FHCRC = common dso_local global i8 0, align 1
@TINF_CHKSUM_CRC = common dso_local global i32 0, align 4
@TINF_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uzlib_gzip_parse_header(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = call i32 @uzlib_get_byte(%struct.TYPE_6__* %6)
  %8 = icmp ne i32 %7, 31
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i32 @uzlib_get_byte(%struct.TYPE_6__* %10)
  %12 = icmp ne i32 %11, 139
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @TINF_DATA_ERROR, align 4
  store i32 %14, i32* %2, align 4
  br label %91

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = call i32 @uzlib_get_byte(%struct.TYPE_6__* %16)
  %18 = icmp ne i32 %17, 8
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @TINF_DATA_ERROR, align 4
  store i32 %20, i32* %2, align 4
  br label %91

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = call i32 @uzlib_get_byte(%struct.TYPE_6__* %22)
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %4, align 1
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 224
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @TINF_DATA_ERROR, align 4
  store i32 %30, i32* %2, align 4
  br label %91

31:                                               ; preds = %21
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = call i32 @tinf_skip_bytes(%struct.TYPE_6__* %32, i32 6)
  %34 = load i8, i8* %4, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @FEXTRA, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = call i32 @tinf_get_uint16(%struct.TYPE_6__* %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @tinf_skip_bytes(%struct.TYPE_6__* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %31
  %47 = load i8, i8* %4, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @FNAME, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %58, %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = call i32 @uzlib_get_byte(%struct.TYPE_6__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %54

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i8, i8* %4, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @FCOMMENT, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %72, %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = call i32 @uzlib_get_byte(%struct.TYPE_6__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %68

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i8, i8* %4, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @FHCRC, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = call i32 @tinf_get_uint16(%struct.TYPE_6__* %82)
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i32, i32* @TINF_CHKSUM_CRC, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 4
  %90 = load i32, i32* @TINF_OK, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %84, %29, %19, %13
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @uzlib_get_byte(%struct.TYPE_6__*) #1

declare dso_local i32 @tinf_skip_bytes(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @tinf_get_uint16(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
