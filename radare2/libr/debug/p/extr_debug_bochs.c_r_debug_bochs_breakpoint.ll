; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_bochs.c_r_debug_bochs_breakpoint.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_bochs.c_r_debug_bochs_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"lb 0x%x\00", align 1
@desc = common dso_local global %struct.TYPE_6__* null, align 8
@bCapturaRegs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"blist\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Num Type\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"d %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32)* @r_debug_bochs_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_debug_bochs_breakpoint(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca [4 x i8], align 1
  %10 = alloca [19 x i8], align 16
  %11 = alloca [100 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %124

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %30 = call i32 @bochs_send_cmd(%struct.TYPE_6__* %28, i8* %29, i32 1)
  store i32 1, i32* @bCapturaRegs, align 4
  br label %123

31:                                               ; preds = %19
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %33 = call i32 @bochs_send_cmd(%struct.TYPE_6__* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  store i32 %37, i32* %15, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %109, label %43

43:                                               ; preds = %31
  store i32 37, i32* %14, align 4
  br label %44

44:                                               ; preds = %106, %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 24
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 121
  br i1 %54, label %55, label %88

55:                                               ; preds = %44
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = call i32 @strncpy(i8* %56, i8* %62, i32 3)
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 28
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = call i32 @strncpy(i8* %65, i8* %72, i32 18)
  %74 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 18
  store i8 0, i8* %74, align 2
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %76 = call i8* @r_num_get(i32* null, i8* %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %13, align 4
  %78 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 0
  %79 = call i8* @r_num_get(i32* null, i8* %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %55
  br label %108

87:                                               ; preds = %55
  br label %88

88:                                               ; preds = %87, %44
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 48
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 60
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %103, 4
  %105 = icmp slt i32 %102, %104
  br label %106

106:                                              ; preds = %101, %91
  %107 = phi i1 [ false, %91 ], [ %105, %101 ]
  br i1 %107, label %44, label %108

108:                                              ; preds = %106, %86
  br label %109

109:                                              ; preds = %108, %31
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %110, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @snprintf(i8* %116, i32 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %120 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %121 = call i32 @bochs_send_cmd(%struct.TYPE_6__* %119, i8* %120, i32 1)
  br label %122

122:                                              ; preds = %115, %109
  br label %123

123:                                              ; preds = %122, %22
  store i32 1, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %18
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @bochs_send_cmd(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @r_num_get(i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
