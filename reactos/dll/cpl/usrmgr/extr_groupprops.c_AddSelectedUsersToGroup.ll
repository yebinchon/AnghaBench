; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_groupprops.c_AddSelectedUsersToGroup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_groupprops.c_AddSelectedUsersToGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@UNLEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_USER_ADD_MEMBERSHIP_LIST = common dso_local global i32 0, align 4
@LVNI_SELECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Selected user: %s\00", align 1
@NERR_Success = common dso_local global i64 0, align 8
@ERROR_MEMBER_IN_ALIAS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Error: %u\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"NetLocalGroupAddMembers\00", align 1
@MB_ICONERROR = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*)* @AddSelectedUsersToGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddSelectedUsersToGroup(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i64, align 8
  %13 = alloca [256 x i32], align 16
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %14 = load i32, i32* @UNLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IDC_USER_ADD_MEMBERSHIP_LIST, align 4
  %21 = call i32 @GetDlgItem(i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @ListView_GetSelectedCount(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @LVNI_SELECTED, align 4
  %29 = call i64 @ListView_GetNextItem(i32 %27, i64 -1, i32 %28)
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %66, %26
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, -1
  br i1 %32, label %33, label %71

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @UNLEN, align 4
  %37 = call i32 @ListView_GetItemText(i32 %34, i64 %35, i32 0, i32* %17, i32 %36)
  %38 = call i32 @_TEXT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @DebugPrintf(i32 %38, i32* %17)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32* %17, i32** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ptrtoint %struct.TYPE_5__* %11 to i32
  %45 = call i64 @NetLocalGroupAddMembers(i32* null, i32 %43, i32 3, i32 %44, i32 1)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @NERR_Success, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %33
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @ERROR_MEMBER_IN_ALIAS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %55 = call i32 @TEXT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @wsprintf(i32* %54, i32 %55, i64 %56)
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %59 = call i32 @TEXT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @MB_ICONERROR, align 4
  %61 = load i32, i32* @MB_OK, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @MessageBox(i32* null, i32* %58, i32 %59, i32 %62)
  br label %66

64:                                               ; preds = %49, %33
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i32, i32* %5, align 4
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* @LVNI_SELECTED, align 4
  %70 = call i64 @ListView_GetNextItem(i32 %67, i64 %68, i32 %69)
  store i64 %70, i64* %7, align 8
  br label %30

71:                                               ; preds = %30
  br label %72

72:                                               ; preds = %71, %2
  %73 = load i32, i32* %10, align 4
  %74 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %74)
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i64 @ListView_GetSelectedCount(i32) #2

declare dso_local i64 @ListView_GetNextItem(i32, i64, i32) #2

declare dso_local i32 @ListView_GetItemText(i32, i64, i32, i32*, i32) #2

declare dso_local i32 @DebugPrintf(i32, i32*) #2

declare dso_local i32 @_TEXT(i8*) #2

declare dso_local i64 @NetLocalGroupAddMembers(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @wsprintf(i32*, i32, i64) #2

declare dso_local i32 @TEXT(i8*) #2

declare dso_local i32 @MessageBox(i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
