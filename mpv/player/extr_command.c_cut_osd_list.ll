; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cut_osd_list.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cut_osd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\E2\86\91 (%d hidden items)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\E2\86\93 (%d hidden items)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.MPContext*, i8*, i32)* @cut_osd_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cut_osd_list(%struct.MPContext* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @osd_get_text_size(i32 %22, i32* %8, i32* %9)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @MPMAX(i32 %25, i32 1)
  %27 = sdiv i32 %24, %26
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 5
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %3
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %4, align 8
  br label %133

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @count_lines(i8* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %4, align 8
  br label %133

44:                                               ; preds = %36
  %45 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %45, i8** %12, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sdiv i32 %47, 2
  %49 = sub nsw i32 %46, %48
  %50 = call i32 @MPMAX(i32 %49, i32 0)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* %13, align 4
  %56 = icmp sgt i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* %15, align 4
  %66 = icmp sgt i32 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %70, %54
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i8* (i8*, i8*, i32, ...) @talloc_asprintf_append_buffer(i8* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i8* %80, i8** %12, align 8
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i8* @skip_n_lines(i8* %82, i32 %83)
  store i8* %84, i8** %17, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @talloc_free(i8* %88)
  %90 = load i8*, i8** %6, align 8
  store i8* %90, i8** %4, align 8
  br label %133

91:                                               ; preds = %81
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %16, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %18, align 4
  %97 = load i8*, i8** %17, align 8
  %98 = load i32, i32* %18, align 4
  %99 = call i8* @skip_n_lines(i8* %97, i32 %98)
  store i8* %99, i8** %19, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %19, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %91
  %104 = load i8*, i8** %19, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  br label %113

109:                                              ; preds = %91
  %110 = load i8*, i8** %17, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = sext i32 %111 to i64
  br label %113

113:                                              ; preds = %109, %103
  %114 = phi i64 [ %108, %103 ], [ %112, %109 ]
  %115 = trunc i64 %114 to i32
  %116 = load i8*, i8** %17, align 8
  %117 = call i8* (i8*, i8*, i32, ...) @talloc_asprintf_append_buffer(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %115, i8* %116)
  store i8* %117, i8** %12, align 8
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %13, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i32, i32* %18, align 4
  %126 = sub nsw i32 %124, %125
  %127 = add nsw i32 %126, 1
  %128 = call i8* (i8*, i8*, i32, ...) @talloc_asprintf_append_buffer(i8* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  store i8* %128, i8** %12, align 8
  br label %129

129:                                              ; preds = %120, %113
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @talloc_free(i8* %130)
  %132 = load i8*, i8** %12, align 8
  store i8* %132, i8** %4, align 8
  br label %133

133:                                              ; preds = %129, %87, %42, %34
  %134 = load i8*, i8** %4, align 8
  ret i8* %134
}

declare dso_local i32 @osd_get_text_size(i32, i32*, i32*) #1

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @count_lines(i8*) #1

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i8* @talloc_asprintf_append_buffer(i8*, i8*, i32, ...) #1

declare dso_local i8* @skip_n_lines(i8*, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
