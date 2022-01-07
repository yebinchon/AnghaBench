; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_number.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NmapServiceProbeList = type { i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s:%u:%u: unexpected character '%c'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.NmapServiceProbeList*, i8*, i64, i64)* @parse_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_number(%struct.NmapServiceProbeList* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.NmapServiceProbeList*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.NmapServiceProbeList* %0, %struct.NmapServiceProbeList** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %23, %4
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @isdigit(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i1 [ false, %10 ], [ %20, %14 ]
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = load i32, i32* %9, align 4
  %25 = mul i32 %24, 10
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %31, 48
  %33 = add i32 %26, %32
  store i32 %33, i32* %9, align 4
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %10

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isspace(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %41, %37
  %49 = phi i1 [ false, %37 ], [ %47, %41 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %7, align 8
  br label %37

53:                                               ; preds = %48
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load i32, i32* @stderr, align 4
  %59 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %5, align 8
  %60 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %5, align 8
  %63 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isprint(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %57
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  br label %80

79:                                               ; preds = %57
  br label %80

80:                                               ; preds = %79, %73
  %81 = phi i32 [ %78, %73 ], [ 46, %79 ]
  %82 = trunc i32 %81 to i8
  %83 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %64, i32 %66, i8 signext %82)
  br label %84

84:                                               ; preds = %80, %53
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, i8 signext) #1

declare dso_local i64 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
