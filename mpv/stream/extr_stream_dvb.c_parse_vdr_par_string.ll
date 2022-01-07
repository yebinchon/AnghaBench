; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_parse_vdr_par_string.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_parse_vdr_par_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*)* @parse_vdr_par_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_vdr_par_string(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %101

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %99, %12
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %100

25:                                               ; preds = %23
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @mp_toupper(i8 signext %27)
  switch i32 %28, label %96 [
    i32 72, label %29
    i32 86, label %34
    i32 83, label %39
    i32 80, label %55
    i32 73, label %72
    i32 77, label %90
  ]

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8 72, i8* %31, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  br label %99

34:                                               ; preds = %25
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i8 86, i8* %36, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %99

39:                                               ; preds = %25
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 49
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  br label %99

55:                                               ; preds = %25
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* @errno, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @strtol(i8* %58, i8** %6, i32 10)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @errno, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %55
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = icmp ne i8* %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i8*, i8** %6, align 8
  store i8* %70, i8** %5, align 8
  br label %71

71:                                               ; preds = %66, %62, %55
  br label %99

72:                                               ; preds = %25
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %5, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 49
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @INVERSION_ON, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  br label %87

83:                                               ; preds = %72
  %84 = load i32, i32* @INVERSION_OFF, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  br label %99

90:                                               ; preds = %25
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %5, align 8
  %93 = call i32 @parse_vdr_modulation(i8** %5)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %99

96:                                               ; preds = %25
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %5, align 8
  br label %99

99:                                               ; preds = %96, %90, %87, %71, %52, %34, %29
  br label %15

100:                                              ; preds = %23
  br label %101

101:                                              ; preds = %100, %2
  ret void
}

declare dso_local i32 @mp_toupper(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @parse_vdr_modulation(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
