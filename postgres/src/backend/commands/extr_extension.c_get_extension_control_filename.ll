; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_get_extension_control_filename.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_get_extension_control_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@my_exec_path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s/extension/%s.control\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_extension_control_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_extension_control_filename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @MAXPGPATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @my_exec_path, align 4
  %11 = call i32 @get_share_path(i32 %10, i8* %9)
  %12 = load i32, i32* @MAXPGPATH, align 4
  %13 = call i64 @palloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @MAXPGPATH, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %20)
  ret i8* %19
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_share_path(i32, i8*) #2

declare dso_local i64 @palloc(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
