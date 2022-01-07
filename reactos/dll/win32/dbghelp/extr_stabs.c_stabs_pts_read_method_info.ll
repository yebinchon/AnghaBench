; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_method_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_method_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParseTypedefData = type { i8* }
%struct.symt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ParseTypedefData*)* @stabs_pts_read_method_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stabs_pts_read_method_info(%struct.ParseTypedefData* %0) #0 {
  %2 = alloca %struct.ParseTypedefData*, align 8
  %3 = alloca %struct.symt*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.ParseTypedefData* %0, %struct.ParseTypedefData** %2, align 8
  br label %7

7:                                                ; preds = %153, %1
  %8 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %9 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %10 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %9, i32* null, %struct.symt** %3)
  %11 = icmp eq i32 %10, -1
  %12 = zext i1 %11 to i32
  %13 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %8, i32 %12)
  %14 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %15 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 59
  br i1 %19, label %20, label %25

20:                                               ; preds = %7
  %21 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %22 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %22, align 8
  br label %25

25:                                               ; preds = %20, %7
  %26 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %27 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 58
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %34 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %35 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i8* @strchr(i8* %37, i8 signext 59)
  store i8* %38, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %33, i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %46 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %32, %25
  %48 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %49 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %50 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sge i32 %53, 48
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %57 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 57
  br label %62

62:                                               ; preds = %55, %47
  %63 = phi i1 [ false, %47 ], [ %61, %55 ]
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %48, i32 %65)
  %67 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %68 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %68, align 8
  %71 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %72 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %73 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sge i32 %77, 65
  br i1 %78, label %79, label %86

79:                                               ; preds = %62
  %80 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %81 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sle i32 %84, 68
  br label %86

86:                                               ; preds = %79, %62
  %87 = phi i1 [ false, %62 ], [ %85, %79 ]
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %71, i32 %89)
  %91 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %92 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %92, align 8
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %5, align 1
  %96 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %97 = load i8, i8* %5, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 46
  br i1 %99, label %100, label %108

100:                                              ; preds = %86
  %101 = load i8, i8* %5, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 63
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i8, i8* %5, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 42
  br label %108

108:                                              ; preds = %104, %100, %86
  %109 = phi i1 [ false, %100 ], [ false, %86 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %96, i32 %110)
  %112 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %113 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %113, align 8
  %116 = load i8, i8* %5, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 42
  br i1 %118, label %119, label %152

119:                                              ; preds = %108
  %120 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %121 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %122 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %121, i64* %6)
  %123 = icmp eq i32 %122, -1
  %124 = zext i1 %123 to i32
  %125 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %120, i32 %124)
  %126 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %127 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %128 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %128, align 8
  %131 = load i8, i8* %129, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 59
  %134 = zext i1 %133 to i32
  %135 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %126, i32 %134)
  %136 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %137 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %138 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %137, i32* null, %struct.symt** %3)
  %139 = icmp eq i32 %138, -1
  %140 = zext i1 %139 to i32
  %141 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %136, i32 %140)
  %142 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %143 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %144 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %144, align 8
  %147 = load i8, i8* %145, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 59
  %150 = zext i1 %149 to i32
  %151 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %142, i32 %150)
  br label %152

152:                                              ; preds = %119, %108
  br label %153

153:                                              ; preds = %152
  %154 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %155 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 59
  br i1 %159, label %7, label %160

160:                                              ; preds = %153
  %161 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %2, align 8
  %162 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %162, align 8
  ret i32 0
}

declare dso_local i32 @PTS_ABORTIF(%struct.ParseTypedefData*, i32) #1

declare dso_local i32 @stabs_pts_read_type_def(%struct.ParseTypedefData*, i32*, %struct.symt**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @stabs_pts_read_number(%struct.ParseTypedefData*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
