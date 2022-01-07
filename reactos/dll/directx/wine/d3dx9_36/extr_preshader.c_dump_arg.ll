; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_dump_arg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_dump_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_regstore = type { i64* }
%struct.d3dx_pres_operand = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@dump_arg.xyzw_str = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [5 x i8] c"xyzw\00", align 1
@PRES_REGTAB_IMMED = common dso_local global i32 0, align 4
@PRES_REGTAB_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%.16e, \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%.16e\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s%u.\00", align 1
@table_symbol = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"%s[%u + %s%u.%c].\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_regstore*, %struct.d3dx_pres_operand*, i32)* @dump_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_arg(%struct.d3dx_regstore* %0, %struct.d3dx_pres_operand* %1, i32 %2) #0 {
  %4 = alloca %struct.d3dx_regstore*, align 8
  %5 = alloca %struct.d3dx_pres_operand*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.d3dx_regstore* %0, %struct.d3dx_regstore** %4, align 8
  store %struct.d3dx_pres_operand* %1, %struct.d3dx_pres_operand** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %11 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PRES_REGTAB_IMMED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %3
  %18 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %19 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PRES_REGTAB_COUNT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %17
  %25 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %55, %24
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp ult i32 %31, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %37 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %4, align 8
  %38 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* @PRES_REGTAB_IMMED, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to double*
  %45 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %46 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %44, i64 %51
  %53 = load double, double* %52, align 8
  %54 = call i32 (i8*, ...) @TRACE(i8* %36, double %53)
  br label %55

55:                                               ; preds = %30
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %26

58:                                               ; preds = %26
  %59 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %152

60:                                               ; preds = %17, %3
  %61 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %62 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PRES_REGTAB_COUNT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load i32*, i32** @table_symbol, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %75 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = zext i32 %77 to i64
  %79 = call i32 @get_reg_offset(i32 %73, i64 %78)
  %80 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %79)
  br label %129

81:                                               ; preds = %60
  %82 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %83 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %87 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @get_reg_offset(i32 %85, i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32*, i32** @table_symbol, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %98 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = zext i32 %100 to i64
  %102 = call i32 @get_reg_offset(i32 %96, i64 %101)
  %103 = load i32*, i32** @table_symbol, align 8
  %104 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %105 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i8*, i8** @dump_arg.xyzw_str, align 8
  %113 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %114 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %118 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = zext i32 %120 to i64
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @get_offset_reg(i64 %121, i32 %122)
  %124 = sub i64 %116, %123
  %125 = getelementptr inbounds i8, i8* %112, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %95, i32 %102, i32 %110, i32 %111, i32 %127)
  br label %129

129:                                              ; preds = %81, %67
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %148, %129
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %130
  %135 = load i8*, i8** @dump_arg.xyzw_str, align 8
  %136 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %5, align 8
  %137 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = add i32 %139, %140
  %142 = urem i32 %141, 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %135, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %134
  %149 = load i32, i32* %7, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %130

151:                                              ; preds = %130
  br label %152

152:                                              ; preds = %151, %58
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @get_reg_offset(i32, i64) #1

declare dso_local i64 @get_offset_reg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
