; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_check_file_access.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_check_file_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CHKACC_INLINE = common dso_local global i32 0, align 4
@INLINE_FILE_TAG = common dso_local global i8* null, align 8
@CHKACC_ACPTSTDIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@CHKACC_DIRPATH = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CHKACC_FILE = common dso_local global i32 0, align 4
@CHKACC_FILEXSTWR = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@CHKACC_PRIVATE = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"WARNING: cannot stat file '%s'\00", align 1
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"WARNING: file '%s' is group or others accessible\00", align 1
@M_NOPREFIX = common dso_local global i32 0, align 4
@M_OPTERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"%s fails with '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*)* @check_file_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_file_access(i32 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %141

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CHKACC_INLINE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** @INLINE_FILE_TAG, align 8
  %25 = call i64 @streq(i8* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %141

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CHKACC_ACPTSTDIN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @streq(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %141

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CHKACC_DIRPATH, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = call i8* @string_alloc(i8* %44, i32* null)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i8* @dirname(i8* %46)
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @X_OK, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @platform_access(i8* %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %54, %43
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @free(i8* %57)
  br label %59

59:                                               ; preds = %56, %38
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @CHKACC_FILE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @platform_access(i8* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @errno, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %67, %62, %59
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %95, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @CHKACC_FILEXSTWR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* @F_OK, align 4
  %85 = call i64 @platform_access(i8* %83, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* @W_OK, align 4
  %90 = call i64 @platform_access(i8* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @errno, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %92, %87
  br label %95

95:                                               ; preds = %94, %82, %77, %74
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @CHKACC_PRIVATE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %95
  %101 = load i8*, i8** %7, align 8
  %102 = call i64 @platform_stat(i8* %101, %struct.TYPE_3__* %13)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* @M_WARN, align 4
  %106 = load i32, i32* @M_ERRNO, align 4
  %107 = or i32 %105, %106
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 (i32, i8*, i8*, ...) @msg(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %108)
  br label %123

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @S_IRWXG, align 4
  %114 = load i32, i32* @S_IRWXO, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i32, i32* @M_WARN, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 (i32, i8*, i8*, ...) @msg(i32 %119, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %118, %110
  br label %123

123:                                              ; preds = %122, %104
  br label %124

124:                                              ; preds = %123, %95
  %125 = load i32, i32* %10, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i32, i32* @M_NOPREFIX, align 4
  %129 = load i32, i32* @M_OPTERR, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @M_ERRNO, align 4
  %132 = or i32 %130, %131
  %133 = load i8*, i8** %9, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 (i32, i8*, i8*, ...) @msg(i32 %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %133, i8* %134)
  br label %136

136:                                              ; preds = %127, %124
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 1, i32 0
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %136, %37, %27, %16
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i8* @string_alloc(i8*, i32*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i64 @platform_access(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @platform_stat(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @msg(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
