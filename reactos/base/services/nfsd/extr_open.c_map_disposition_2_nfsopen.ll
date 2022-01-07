; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_map_disposition_2_nfsopen.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_map_disposition_2_nfsopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_ERROR = common dso_local global i32 0, align 4
@FILE_SUPERSEDE = common dso_local global i64 0, align 8
@NFS4ERR_NOENT = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i8* null, align 8
@OPEN4_CREATE = common dso_local global i8* null, align 8
@GUARDED4 = common dso_local global i8* null, align 8
@EXCLUSIVE4_1 = common dso_local global i8* null, align 8
@FILE_CREATE = common dso_local global i64 0, align 8
@ERROR_FILE_EXISTS = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i64 0, align 8
@OPEN4_NOCREATE = common dso_local global i8* null, align 8
@FILE_OPEN_IF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"creating new file\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"opening existing file\0A\00", align 1
@FILE_OVERWRITE = common dso_local global i64 0, align 8
@FILE_OVERWRITE_IF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i8**, i8**, i8**)* @map_disposition_2_nfsopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_disposition_2_nfsopen(i64 %0, i32 %1, i64 %2, i8** %3, i8** %4, i8** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8** %5, i8*** %12, align 8
  %14 = load i32, i32* @NO_ERROR, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @FILE_SUPERSEDE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %6
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @NFS4ERR_NOENT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %24 = load i8**, i8*** %12, align 8
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i8*, i8** @OPEN4_CREATE, align 8
  %27 = load i8**, i8*** %10, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** @GUARDED4, align 8
  %32 = load i8**, i8*** %11, align 8
  store i8* %31, i8** %32, align 8
  br label %36

33:                                               ; preds = %25
  %34 = load i8*, i8** @EXCLUSIVE4_1, align 8
  %35 = load i8**, i8*** %11, align 8
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  br label %126

37:                                               ; preds = %6
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @FILE_CREATE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @ERROR_FILE_EXISTS, align 4
  store i32 %45, i32* %13, align 4
  br label %58

46:                                               ; preds = %41
  %47 = load i8*, i8** @OPEN4_CREATE, align 8
  %48 = load i8**, i8*** %10, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** @GUARDED4, align 8
  %53 = load i8**, i8*** %11, align 8
  store i8* %52, i8** %53, align 8
  br label %57

54:                                               ; preds = %46
  %55 = load i8*, i8** @EXCLUSIVE4_1, align 8
  %56 = load i8**, i8*** %11, align 8
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %44
  br label %125

59:                                               ; preds = %37
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @FILE_OPEN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @NFS4ERR_NOENT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %13, align 4
  br label %73

70:                                               ; preds = %63
  %71 = load i8*, i8** @OPEN4_NOCREATE, align 8
  %72 = load i8**, i8*** %10, align 8
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %70, %67
  br label %124

74:                                               ; preds = %59
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @FILE_OPEN_IF, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @NFS4ERR_NOENT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = call i32 @dprintf(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %84 = load i8*, i8** @OPEN4_CREATE, align 8
  %85 = load i8**, i8*** %10, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %87 = load i8**, i8*** %12, align 8
  store i8* %86, i8** %87, align 8
  br label %92

88:                                               ; preds = %78
  %89 = call i32 @dprintf(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i8*, i8** @OPEN4_NOCREATE, align 8
  %91 = load i8**, i8*** %10, align 8
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %88, %82
  br label %123

93:                                               ; preds = %74
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @FILE_OVERWRITE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @NFS4ERR_NOENT, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i8*, i8** @OPEN4_CREATE, align 8
  %106 = load i8**, i8*** %10, align 8
  store i8* %105, i8** %106, align 8
  br label %122

107:                                              ; preds = %93
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* @FILE_OVERWRITE_IF, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @NFS4ERR_NOENT, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %117 = load i8**, i8*** %12, align 8
  store i8* %116, i8** %117, align 8
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i8*, i8** @OPEN4_CREATE, align 8
  %120 = load i8**, i8*** %10, align 8
  store i8* %119, i8** %120, align 8
  br label %121

121:                                              ; preds = %118, %107
  br label %122

122:                                              ; preds = %121, %104
  br label %123

123:                                              ; preds = %122, %92
  br label %124

124:                                              ; preds = %123, %73
  br label %125

125:                                              ; preds = %124, %58
  br label %126

126:                                              ; preds = %125, %36
  %127 = load i32, i32* %13, align 4
  ret i32 %127
}

declare dso_local i32 @dprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
