; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_vertexdeclaration.c_parse_token.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_vertexdeclaration.c_parse_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D3DVSD_TOKENTYPEMASK = common dso_local global i32 0, align 4
@D3DVSD_TOKENTYPESHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" 0x%08x NOP()\0A\00", align 1
@D3DVSD_STREAMTESSMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c" 0x%08x STREAM_TESS()\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" 0x%08x STREAM(%u)\0A\00", align 1
@D3DVSD_STREAMNUMBERMASK = common dso_local global i32 0, align 4
@D3DVSD_STREAMNUMBERSHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c" 0x%08x SKIP(%u)\0A\00", align 1
@D3DVSD_SKIPCOUNTMASK = common dso_local global i32 0, align 4
@D3DVSD_SKIPCOUNTSHIFT = common dso_local global i32 0, align 4
@D3DVSD_DATATYPEMASK = common dso_local global i32 0, align 4
@D3DVSD_DATATYPESHIFT = common dso_local global i32 0, align 4
@D3DVSD_VERTEXREGMASK = common dso_local global i32 0, align 4
@D3DVSD_VERTEXREGSHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c" 0x%08x REG(%s, %s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c" 0x%08x TESSUV(%s) as %s\0A\00", align 1
@D3DVSD_VERTEXREGINMASK = common dso_local global i32 0, align 4
@D3DVSD_VERTEXREGINSHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c" 0x%08x TESSNORMAL(%s, %s) as %s\0A\00", align 1
@D3DVSD_CONSTCOUNTMASK = common dso_local global i32 0, align 4
@D3DVSD_CONSTCOUNTSHIFT = common dso_local global i32 0, align 4
@D3DVSD_EXTINFOMASK = common dso_local global i32 0, align 4
@D3DVSD_EXTINFOSHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c" 0x%08x EXT(%u, %u)\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" 0x%08x END()\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c" 0x%08x UNKNOWN\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parse_token(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  store i64 1, i64* %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @D3DVSD_TOKENTYPEMASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @D3DVSD_TOKENTYPESHIFT, align 4
  %21 = ashr i32 %19, %20
  switch i32 %21, label %149 [
    i32 131, label %22
    i32 130, label %25
    i32 129, label %42
    i32 128, label %72
    i32 134, label %118
    i32 132, label %128
    i32 133, label %146
  ]

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %152

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @D3DVSD_STREAMTESSMASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %41

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @D3DVSD_STREAMNUMBERMASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @D3DVSD_STREAMNUMBERSHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %33, %30
  br label %152

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 268435456
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @D3DVSD_SKIPCOUNTMASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @D3DVSD_SKIPCOUNTSHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %52)
  br label %71

54:                                               ; preds = %42
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @D3DVSD_DATATYPEMASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @D3DVSD_DATATYPESHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @D3DVSD_VERTEXREGMASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @D3DVSD_VERTEXREGSHIFT, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @debug_d3dvsde_register(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @debug_d3dvsdt_type(i32 %68)
  %70 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %54, %46
  br label %152

72:                                               ; preds = %1
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, 268435456
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @D3DVSD_DATATYPEMASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @D3DVSD_DATATYPESHIFT, align 4
  %81 = ashr i32 %79, %80
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @D3DVSD_VERTEXREGMASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @D3DVSD_VERTEXREGSHIFT, align 4
  %86 = ashr i32 %84, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @debug_d3dvsde_register(i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @debug_d3dvsdt_type(i32 %90)
  %92 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %87, i32 %89, i32 %91)
  br label %117

93:                                               ; preds = %72
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @D3DVSD_DATATYPEMASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @D3DVSD_DATATYPESHIFT, align 4
  %98 = ashr i32 %96, %97
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @D3DVSD_VERTEXREGMASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @D3DVSD_VERTEXREGSHIFT, align 4
  %103 = ashr i32 %101, %102
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @D3DVSD_VERTEXREGINMASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @D3DVSD_VERTEXREGINSHIFT, align 4
  %108 = ashr i32 %106, %107
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @debug_d3dvsde_register(i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @debug_d3dvsde_register(i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @debug_d3dvsdt_type(i32 %114)
  %116 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %109, i32 %111, i32 %113, i32 %115)
  br label %117

117:                                              ; preds = %93, %76
  br label %152

118:                                              ; preds = %1
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @D3DVSD_CONSTCOUNTMASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @D3DVSD_CONSTCOUNTSHIFT, align 4
  %123 = ashr i32 %121, %122
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = mul nsw i32 4, %124
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %4, align 8
  br label %152

128:                                              ; preds = %1
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @D3DVSD_CONSTCOUNTMASK, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* @D3DVSD_CONSTCOUNTSHIFT, align 4
  %133 = ashr i32 %131, %132
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @D3DVSD_EXTINFOMASK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @D3DVSD_EXTINFOSHIFT, align 4
  %138 = ashr i32 %136, %137
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %4, align 8
  br label %152

146:                                              ; preds = %1
  %147 = load i32, i32* %3, align 4
  %148 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  br label %152

149:                                              ; preds = %1
  %150 = load i32, i32* %3, align 4
  %151 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %149, %146, %128, %118, %117, %71, %41, %22
  %153 = load i64, i64* %4, align 8
  ret i64 %153
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debug_d3dvsde_register(i32) #1

declare dso_local i32 @debug_d3dvsdt_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
