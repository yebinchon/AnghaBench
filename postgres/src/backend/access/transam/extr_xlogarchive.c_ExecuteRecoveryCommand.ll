; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogarchive.c_ExecuteRecoveryCommand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogarchive.c_ExecuteRecoveryCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"executing %s \22%s\22\00", align 1
@FATAL = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%s \22%s\22: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecuteRecoveryCommand(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @MAXPGPATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br label %29

29:                                               ; preds = %26, %3
  %30 = phi i1 [ false, %3 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = call i32 @GetOldestRestartPoint(i32* %15, i32* %16)
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @wal_segment_size, align 4
  %37 = call i32 @XLByteToSeg(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @wal_segment_size, align 4
  %41 = call i32 @XLogFileName(i8* %23, i32 %38, i32 %39, i32 %40)
  store i8* %20, i8** %10, align 8
  %42 = load i32, i32* @MAXPGPATH, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %20, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %4, align 8
  store i8* %47, i8** %12, align 8
  br label %48

48:                                               ; preds = %112, %29
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %115

52:                                               ; preds = %48
  %53 = load i8*, i8** %12, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %101

57:                                               ; preds = %52
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  switch i32 %61, label %90 [
    i32 114, label %62
    i32 37, label %78
  ]

62:                                               ; preds = %57
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @StrNCpy(i8* %65, i8* %23, i32 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = load i8*, i8** %10, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %10, align 8
  br label %100

78:                                               ; preds = %57
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = icmp ult i8* %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i8*, i8** %12, align 8
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %10, align 8
  store i8 %86, i8* %87, align 1
  br label %89

89:                                               ; preds = %84, %78
  br label %100

90:                                               ; preds = %57
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = icmp ult i8* %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8*, i8** %12, align 8
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  store i8 %96, i8* %97, align 1
  br label %99

99:                                               ; preds = %94, %90
  br label %100

100:                                              ; preds = %99, %89, %62
  br label %111

101:                                              ; preds = %52
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i8*, i8** %12, align 8
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %10, align 8
  store i8 %107, i8* %108, align 1
  br label %110

110:                                              ; preds = %105, %101
  br label %111

111:                                              ; preds = %110, %100
  br label %112

112:                                              ; preds = %111
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %12, align 8
  br label %48

115:                                              ; preds = %48
  %116 = load i8*, i8** %10, align 8
  store i8 0, i8* %116, align 1
  %117 = load i32, i32* @DEBUG3, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 @errmsg_internal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %118, i8* %119)
  %121 = call i32 @ereport(i32 %117, i32 %120)
  %122 = call i32 @system(i8* %20)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %115
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %13, align 4
  %130 = call i64 @wait_result_is_any_signal(i32 %129, i32 1)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @FATAL, align 4
  br label %136

134:                                              ; preds = %128, %125
  %135 = load i32, i32* @WARNING, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = load i8*, i8** %5, align 8
  %139 = load i8*, i8** %4, align 8
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @wait_result_to_str(i32 %140)
  %142 = call i32 @errmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %138, i8* %139, i32 %141)
  %143 = call i32 @ereport(i32 %137, i32 %142)
  br label %144

144:                                              ; preds = %136, %115
  %145 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %145)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @GetOldestRestartPoint(i32*, i32*) #2

declare dso_local i32 @XLByteToSeg(i32, i32, i32) #2

declare dso_local i32 @XLogFileName(i8*, i32, i32, i32) #2

declare dso_local i32 @StrNCpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg_internal(i8*, i8*, i8*) #2

declare dso_local i32 @system(i8*) #2

declare dso_local i64 @wait_result_is_any_signal(i32, i32) #2

declare dso_local i32 @errmsg(i8*, i8*, i8*, i32) #2

declare dso_local i32 @wait_result_to_str(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
