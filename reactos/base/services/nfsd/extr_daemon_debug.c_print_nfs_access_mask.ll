; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_daemon_debug.c_print_nfs_access_mask.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_daemon_debug.c_print_nfs_access_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"--> print_nfs_access_mask: %x\0A\00", align 1
@ACE4_READ_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"\09ACE4_READ_DATA\0A\00", align 1
@ACE4_LIST_DIRECTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"\09ACE4_LIST_DIRECTORY\0A\00", align 1
@ACE4_WRITE_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"\09ACE4_WRITE_DATA\0A\00", align 1
@ACE4_ADD_FILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"\09ACE4_ADD_FILE\0A\00", align 1
@ACE4_APPEND_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"\09ACE4_APPEND_DATA\0A\00", align 1
@ACE4_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"\09ACE4_ADD_SUBDIRECTORY\0A\00", align 1
@ACE4_READ_NAMED_ATTRS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"\09ACE4_READ_NAMED_ATTRS\0A\00", align 1
@ACE4_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"\09ACE4_WRITE_NAMED_ATTRS\0A\00", align 1
@ACE4_EXECUTE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"\09ACE4_EXECUTE\0A\00", align 1
@ACE4_DELETE_CHILD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"\09ACE4_DELETE_CHILD\0A\00", align 1
@ACE4_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"\09ACE4_READ_ATTRIBUTES\0A\00", align 1
@ACE4_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"\09ACE4_WRITE_ATTRIBUTES\0A\00", align 1
@ACE4_DELETE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"\09ACE4_DELETE\0A\00", align 1
@ACE4_READ_ACL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"\09ACE4_READ_ACL\0A\00", align 1
@ACE4_WRITE_ACL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"\09ACE4_WRITE_ACL\0A\00", align 1
@ACE4_WRITE_OWNER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"\09ACE4_WRITE_OWNER\0A\00", align 1
@ACE4_SYNCHRONIZE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"\09ACE4_SYNCHRONIZE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_nfs_access_mask(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %129

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ACE4_READ_DATA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ACE4_LIST_DIRECTORY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ACE4_WRITE_DATA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ACE4_ADD_FILE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ACE4_APPEND_DATA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ACE4_ADD_SUBDIRECTORY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @ACE4_READ_NAMED_ATTRS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @ACE4_WRITE_NAMED_ATTRS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @ACE4_EXECUTE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @ACE4_DELETE_CHILD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @ACE4_READ_ATTRIBUTES, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @ACE4_WRITE_ATTRIBUTES, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @ACE4_DELETE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @ACE4_READ_ACL, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @ACE4_WRITE_ACL, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %108
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @ACE4_WRITE_OWNER, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %115
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @ACE4_SYNCHRONIZE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  br label %129

129:                                              ; preds = %7, %127, %122
  ret void
}

declare dso_local i32 @dprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
