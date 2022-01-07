; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_is_well_known_sid.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_is_well_known_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACLLVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"WELL_KNOWN_SID_TYPE %d\0A\00", align 1
@ACE4_OWNER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ACE4_NOBODY = common dso_local global i32 0, align 4
@ACE4_ANONYMOUS = common dso_local global i32 0, align 4
@ACE4_EVERYONE = common dso_local global i32 0, align 4
@ACE4_GROUP = common dso_local global i32 0, align 4
@ACE4_AUTHENTICATED = common dso_local global i32 0, align 4
@ACE4_DIALUP = common dso_local global i32 0, align 4
@ACE4_NETWORK = common dso_local global i32 0, align 4
@ACE4_BATCH = common dso_local global i32 0, align 4
@ACE4_INTERACTIVE = common dso_local global i32 0, align 4
@ACE4_SERVICE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @is_well_known_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_well_known_sid(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %115, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 78
  br i1 %10, label %11, label %118

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = call i32 @IsWellKnownSid(i32 %12, i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %115

19:                                               ; preds = %11
  %20 = load i32, i32* @ACLLVL, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dprintf(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  switch i64 %24, label %113 [
    i64 136, label %25
    i64 130, label %33
    i64 141, label %41
    i64 128, label %49
    i64 137, label %57
    i64 138, label %57
    i64 140, label %65
    i64 135, label %73
    i64 131, label %81
    i64 139, label %89
    i64 134, label %97
    i64 132, label %105
    i64 133, label %105
    i64 129, label %105
  ]

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @ACE4_OWNER, align 4
  %28 = load i32, i32* @ACE4_OWNER, align 4
  %29 = call i32 @strlen(i32 %28)
  %30 = add nsw i32 %29, 1
  %31 = call i32 @memcpy(i8* %26, i32 %27, i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %120

33:                                               ; preds = %19
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @ACE4_NOBODY, align 4
  %36 = load i32, i32* @ACE4_NOBODY, align 4
  %37 = call i32 @strlen(i32 %36)
  %38 = add nsw i32 %37, 1
  %39 = call i32 @memcpy(i8* %34, i32 %35, i32 %38)
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %3, align 4
  br label %120

41:                                               ; preds = %19
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @ACE4_ANONYMOUS, align 4
  %44 = load i32, i32* @ACE4_ANONYMOUS, align 4
  %45 = call i32 @strlen(i32 %44)
  %46 = add nsw i32 %45, 1
  %47 = call i32 @memcpy(i8* %42, i32 %43, i32 %46)
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %3, align 4
  br label %120

49:                                               ; preds = %19
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* @ACE4_EVERYONE, align 4
  %52 = load i32, i32* @ACE4_EVERYONE, align 4
  %53 = call i32 @strlen(i32 %52)
  %54 = add nsw i32 %53, 1
  %55 = call i32 @memcpy(i8* %50, i32 %51, i32 %54)
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %3, align 4
  br label %120

57:                                               ; preds = %19, %19
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* @ACE4_GROUP, align 4
  %60 = load i32, i32* @ACE4_GROUP, align 4
  %61 = call i32 @strlen(i32 %60)
  %62 = add nsw i32 %61, 1
  %63 = call i32 @memcpy(i8* %58, i32 %59, i32 %62)
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %3, align 4
  br label %120

65:                                               ; preds = %19
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* @ACE4_AUTHENTICATED, align 4
  %68 = load i32, i32* @ACE4_AUTHENTICATED, align 4
  %69 = call i32 @strlen(i32 %68)
  %70 = add nsw i32 %69, 1
  %71 = call i32 @memcpy(i8* %66, i32 %67, i32 %70)
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %3, align 4
  br label %120

73:                                               ; preds = %19
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* @ACE4_DIALUP, align 4
  %76 = load i32, i32* @ACE4_DIALUP, align 4
  %77 = call i32 @strlen(i32 %76)
  %78 = add nsw i32 %77, 1
  %79 = call i32 @memcpy(i8* %74, i32 %75, i32 %78)
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %3, align 4
  br label %120

81:                                               ; preds = %19
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* @ACE4_NETWORK, align 4
  %84 = load i32, i32* @ACE4_NETWORK, align 4
  %85 = call i32 @strlen(i32 %84)
  %86 = add nsw i32 %85, 1
  %87 = call i32 @memcpy(i8* %82, i32 %83, i32 %86)
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %3, align 4
  br label %120

89:                                               ; preds = %19
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* @ACE4_BATCH, align 4
  %92 = load i32, i32* @ACE4_BATCH, align 4
  %93 = call i32 @strlen(i32 %92)
  %94 = add nsw i32 %93, 1
  %95 = call i32 @memcpy(i8* %90, i32 %91, i32 %94)
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %3, align 4
  br label %120

97:                                               ; preds = %19
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* @ACE4_INTERACTIVE, align 4
  %100 = load i32, i32* @ACE4_INTERACTIVE, align 4
  %101 = call i32 @strlen(i32 %100)
  %102 = add nsw i32 %101, 1
  %103 = call i32 @memcpy(i8* %98, i32 %99, i32 %102)
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %3, align 4
  br label %120

105:                                              ; preds = %19, %19, %19
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* @ACE4_SERVICE, align 4
  %108 = load i32, i32* @ACE4_SERVICE, align 4
  %109 = call i32 @strlen(i32 %108)
  %110 = add nsw i32 %109, 1
  %111 = call i32 @memcpy(i8* %106, i32 %107, i32 %110)
  %112 = load i32, i32* @TRUE, align 4
  store i32 %112, i32* %3, align 4
  br label %120

113:                                              ; preds = %19
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %3, align 4
  br label %120

115:                                              ; preds = %18
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %8

118:                                              ; preds = %8
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %113, %105, %97, %89, %81, %73, %65, %57, %49, %41, %33, %25
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @IsWellKnownSid(i32, i64) #1

declare dso_local i32 @dprintf(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
