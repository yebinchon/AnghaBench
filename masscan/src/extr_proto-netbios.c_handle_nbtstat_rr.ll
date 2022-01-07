; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-netbios.c_handle_nbtstat_rr.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-netbios.c_handle_nbtstat_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@PROTO_NBTSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Output*, i32, i32, i8*, i32, i32, i32)* @handle_nbtstat_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_nbtstat_rr(%struct.Output* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.Output*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [65536 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  store %struct.Output* %0, %struct.Output** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %107

26:                                               ; preds = %7
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* %18, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %18, align 4
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %19, align 4
  br label %34

34:                                               ; preds = %44, %26
  %35 = load i32, i32* %18, align 4
  %36 = add i32 %35, 18
  %37 = load i32, i32* %13, align 4
  %38 = icmp ule i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %39, %34
  %43 = phi i1 [ false, %34 ], [ %41, %39 ]
  br i1 %43, label %44, label %55

44:                                               ; preds = %42
  %45 = getelementptr inbounds [65536 x i8], [65536 x i8]* %16, i64 0, i64 0
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %18, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = call i32 @append_name(i8* %45, i32 65536, i32* %17, i8* %49)
  %51 = load i32, i32* %18, align 4
  %52 = add i32 %51, 18
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %19, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %19, align 4
  br label %34

55:                                               ; preds = %42
  store i32 0, i32* %20, align 4
  br label %56

56:                                               ; preds = %94, %55
  %57 = load i32, i32* %20, align 4
  %58 = icmp ult i32 %57, 6
  br i1 %58, label %59, label %97

59:                                               ; preds = %56
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %20, align 4
  %62 = add i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %59
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* %18, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %21, align 1
  %71 = getelementptr inbounds [65536 x i8], [65536 x i8]* %16, i64 0, i64 0
  %72 = load i8, i8* %21, align 1
  %73 = zext i8 %72 to i32
  %74 = ashr i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @append_char(i8* %71, i32 65536, i32* %17, i8 signext %77)
  %79 = getelementptr inbounds [65536 x i8], [65536 x i8]* %16, i64 0, i64 0
  %80 = load i8, i8* %21, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 15
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @append_char(i8* %79, i32 65536, i32* %17, i8 signext %85)
  %87 = load i32, i32* %20, align 4
  %88 = icmp ult i32 %87, 5
  br i1 %88, label %89, label %92

89:                                               ; preds = %65
  %90 = getelementptr inbounds [65536 x i8], [65536 x i8]* %16, i64 0, i64 0
  %91 = call i32 @append_char(i8* %90, i32 65536, i32* %17, i8 signext 45)
  br label %92

92:                                               ; preds = %89, %65
  br label %93

93:                                               ; preds = %92, %59
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %20, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %20, align 4
  br label %56

97:                                               ; preds = %56
  %98 = load %struct.Output*, %struct.Output** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @PROTO_NBTSTAT, align 4
  %103 = load i32, i32* %11, align 4
  %104 = getelementptr inbounds [65536 x i8], [65536 x i8]* %16, i64 0, i64 0
  %105 = load i32, i32* %17, align 4
  %106 = call i32 @output_report_banner(%struct.Output* %98, i32 %99, i32 %100, i32 17, i32 %101, i32 %102, i32 %103, i8* %104, i32 %105)
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %97, %25
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local i32 @append_name(i8*, i32, i32*, i8*) #1

declare dso_local i32 @append_char(i8*, i32, i32*, i8 signext) #1

declare dso_local i32 @output_report_banner(%struct.Output*, i32, i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
