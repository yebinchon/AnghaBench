; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_term_osd_update.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_term_osd_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MSGL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @term_osd_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @term_osd_update(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i8*], align 16
  %5 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 24, i1 false)
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 6
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %111

14:                                               ; preds = %1
  %15 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %16 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %29 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %33
  store i8* %30, i8** %34, align 8
  br label %35

35:                                               ; preds = %27, %19, %14
  %36 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %37 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %42 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %50 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %54
  store i8* %51, i8** %55, align 8
  br label %56

56:                                               ; preds = %48, %40, %35
  %57 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %58 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %63 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %71 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %75
  store i8* %72, i8** %76, align 8
  br label %77

77:                                               ; preds = %69, %61, %56
  %78 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %79 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %80 = load i32, i32* %3, align 4
  %81 = call i8* @join_lines(%struct.MPContext* %78, i8** %79, i32 %80)
  store i8* %81, i8** %5, align 8
  %82 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %83 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @strcmp(i8* %84, i8* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %77
  %89 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %90 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @mp_msg_has_status_line(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @talloc_free(i8* %95)
  br label %111

97:                                               ; preds = %88, %77
  %98 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %99 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @talloc_free(i8* %100)
  %102 = load i8*, i8** %5, align 8
  %103 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %104 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %106 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MSGL_STATUS, align 4
  %109 = load i8*, i8** %5, align 8
  %110 = call i32 @mp_msg(i32 %107, i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %13, %97, %94
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @join_lines(%struct.MPContext*, i8**, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @mp_msg_has_status_line(i32) #2

declare dso_local i32 @talloc_free(i8*) #2

declare dso_local i32 @mp_msg(i32, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
