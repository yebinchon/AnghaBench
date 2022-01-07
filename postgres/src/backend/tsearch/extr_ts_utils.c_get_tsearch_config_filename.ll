; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_utils.c_get_tsearch_config_filename.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_utils.c_get_tsearch_config_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"abcdefghijklmnopqrstuvwxyz0123456789_\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"invalid text search configuration file name \22%s\22\00", align 1
@my_exec_path = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%s/tsearch_data/%s.%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_tsearch_config_filename(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @MAXPGPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strspn(i8* %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = call i32 @ereport(i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load i32, i32* @my_exec_path, align 4
  %26 = call i32 @get_share_path(i32 %25, i8* %11)
  %27 = load i32, i32* @MAXPGPATH, align 4
  %28 = call i8* @palloc(i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @MAXPGPATH, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %11, i8* %31, i8* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %35)
  ret i8* %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i32 @get_share_path(i32, i8*) #2

declare dso_local i8* @palloc(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
