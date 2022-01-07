; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_map_nfs4ace_who.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_map_nfs4ace_who.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ACLLVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"map_nfs4ace_who: this is owner's sid\0A\00", align 1
@ACE4_OWNER = common dso_local global i8* null, align 8
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"map_nfs4ace_who: this is group's sid\0A\00", align 1
@ACE4_GROUP = common dso_local global i8* null, align 8
@ACE4_NOBODY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [89 x i8] c"map_nfs4ace_who: LookupAccountSid returned %d GetLastError %d name len %d domain len %d\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"map_nfs4ace_who: LookupAccountSid failed with %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"map_nfs4ace_who: who=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i8*, i8*)* @map_nfs4ace_who to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_nfs4ace_who(i64 %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i32, i32* @ERROR_INTERNAL_ERROR, align 4
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %12, align 4
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %5
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @EqualSid(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* @ACLLVL, align 4
  %28 = call i32 (i32, i8*, ...) @dprintf(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** @ACE4_OWNER, align 8
  %31 = load i8*, i8** @ACE4_OWNER, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = add nsw i32 %32, 1
  %34 = call i32 @memcpy(i8* %29, i8* %30, i32 %33)
  %35 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %35, i32* %6, align 4
  br label %158

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %5
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @EqualSid(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32, i32* @ACLLVL, align 4
  %47 = call i32 (i32, i8*, ...) @dprintf(i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** @ACE4_GROUP, align 8
  %50 = load i8*, i8** @ACE4_GROUP, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = add nsw i32 %51, 1
  %53 = call i32 @memcpy(i8* %48, i8* %49, i32 %52)
  %54 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %54, i32* %6, align 4
  br label %158

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i64, i64* %7, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @is_well_known_sid(i64 %57, i8* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** @ACE4_NOBODY, align 8
  %65 = load i8*, i8** @ACE4_NOBODY, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = call i32 @strncmp(i8* %63, i8* %64, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i8*, i8** @ACE4_NOBODY, align 8
  %71 = call i32 @strlen(i8* %70)
  store i32 %71, i32* %13, align 4
  br label %126

72:                                               ; preds = %62
  %73 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %73, i32* %6, align 4
  br label %158

74:                                               ; preds = %56
  %75 = load i64, i64* %7, align 8
  %76 = load i8*, i8** %17, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @LookupAccountSid(i32* null, i64 %75, i8* %76, i32* %13, i8* %77, i32* %14, i32* %15)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* @ACLLVL, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (...) @GetLastError()
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 (i32, i8*, ...) @dprintf(i32 %79, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* @ERROR_INTERNAL_ERROR, align 4
  store i32 %88, i32* %6, align 4
  br label %158

89:                                               ; preds = %74
  %90 = call i32 (...) @GetLastError()
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @ERROR_INTERNAL_ERROR, align 4
  store i32 %95, i32* %6, align 4
  br label %158

96:                                               ; preds = %89
  %97 = load i32, i32* %13, align 4
  %98 = call i8* @malloc(i32 %97)
  store i8* %98, i8** %17, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 (...) @GetLastError()
  store i32 %102, i32* %12, align 4
  br label %152

103:                                              ; preds = %96
  %104 = load i32, i32* %14, align 4
  %105 = call i8* @malloc(i32 %104)
  store i8* %105, i8** %16, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %154

109:                                              ; preds = %103
  %110 = load i64, i64* %7, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = call i32 @LookupAccountSid(i32* null, i64 %110, i8* %111, i32* %13, i8* %112, i32* %14, i32* %15)
  store i32 %113, i32* %12, align 4
  %114 = load i8*, i8** %16, align 8
  %115 = call i32 @free(i8* %114)
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %109
  %119 = call i32 (...) @GetLastError()
  %120 = call i32 @eprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %154

121:                                              ; preds = %109
  %122 = load i8*, i8** %10, align 8
  %123 = load i8*, i8** %17, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @memcpy(i8* %122, i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %69
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = call i32 @memcpy(i8* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %132 = load i8*, i8** %10, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8*, i8** %11, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 @strlen(i8* %138)
  %140 = add nsw i32 %139, 1
  %141 = call i32 @memcpy(i8* %136, i8* %137, i32 %140)
  %142 = load i32, i32* @ACLLVL, align 4
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 (i32, i8*, ...) @dprintf(i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %143)
  %145 = load i8*, i8** %17, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %126
  %148 = load i8*, i8** %17, align 8
  %149 = call i32 @free(i8* %148)
  br label %150

150:                                              ; preds = %147, %126
  %151 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %154, %150, %101
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %6, align 4
  br label %158

154:                                              ; preds = %118, %108
  %155 = load i8*, i8** %17, align 8
  %156 = call i32 @free(i8* %155)
  %157 = call i32 (...) @GetLastError()
  store i32 %157, i32* %12, align 4
  br label %152

158:                                              ; preds = %152, %94, %87, %72, %45, %26
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i64 @EqualSid(i64, i64) #1

declare dso_local i32 @dprintf(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @is_well_known_sid(i64, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @LookupAccountSid(i32*, i64, i8*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @eprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
