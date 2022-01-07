; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_map_access_2_allowdeny.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_map_access_2_allowdeny.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_WRITE_DATA = common dso_local global i32 0, align 4
@FILE_APPEND_DATA = common dso_local global i32 0, align 4
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_READ_DATA = common dso_local global i32 0, align 4
@FILE_EXECUTE = common dso_local global i32 0, align 4
@OPEN4_SHARE_ACCESS_BOTH = common dso_local global i32 0, align 4
@OPEN4_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@OPEN4_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@FILE_CREATE = common dso_local global i32 0, align 4
@FILE_OPEN_IF = common dso_local global i32 0, align 4
@FILE_OVERWRITE_IF = common dso_local global i32 0, align 4
@FILE_SUPERSEDE = common dso_local global i32 0, align 4
@FILE_OVERWRITE = common dso_local global i32 0, align 4
@OPEN4_SHARE_ACCESS_WANT_NO_DELEG = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN4_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@OPEN4_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@OPEN4_SHARE_DENY_READ = common dso_local global i32 0, align 4
@OPEN4_SHARE_DENY_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*)* @map_access_2_allowdeny to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_access_2_allowdeny(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @FILE_WRITE_DATA, align 4
  %13 = load i32, i32* @FILE_APPEND_DATA, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %11, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @FILE_READ_DATA, align 4
  %22 = load i32, i32* @FILE_EXECUTE, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @OPEN4_SHARE_ACCESS_BOTH, align 4
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  br label %53

29:                                               ; preds = %19, %5
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FILE_READ_DATA, align 4
  %32 = load i32, i32* @FILE_EXECUTE, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @OPEN4_SHARE_ACCESS_READ, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %52

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @FILE_WRITE_DATA, align 4
  %42 = load i32, i32* @FILE_APPEND_DATA, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @OPEN4_SHARE_ACCESS_WRITE, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %39
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @FILE_CREATE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @FILE_OPEN_IF, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @FILE_OVERWRITE_IF, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @FILE_SUPERSEDE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @FILE_OVERWRITE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69, %65, %61, %57, %53
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @FILE_WRITE_DATA, align 4
  %76 = load i32, i32* @FILE_APPEND_DATA, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @FILE_READ_DATA, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @FILE_EXECUTE, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %74, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %73
  %87 = load i32, i32* @OPEN4_SHARE_ACCESS_READ, align 4
  %88 = load i32, i32* @OPEN4_SHARE_ACCESS_WANT_NO_DELEG, align 4
  %89 = or i32 %87, %88
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %73, %69
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @FILE_SHARE_READ, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @OPEN4_SHARE_DENY_NONE, align 4
  %103 = load i32*, i32** %10, align 8
  store i32 %102, i32* %103, align 4
  br label %125

104:                                              ; preds = %96, %91
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @FILE_SHARE_READ, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @OPEN4_SHARE_DENY_WRITE, align 4
  %111 = load i32*, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  br label %124

112:                                              ; preds = %104
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* @OPEN4_SHARE_DENY_READ, align 4
  %119 = load i32*, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  br label %123

120:                                              ; preds = %112
  %121 = load i32, i32* @OPEN4_SHARE_DENY_BOTH, align 4
  %122 = load i32*, i32** %10, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %109
  br label %125

125:                                              ; preds = %124, %101
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
