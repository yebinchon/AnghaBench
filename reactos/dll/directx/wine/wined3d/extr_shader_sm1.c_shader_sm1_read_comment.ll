; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_sm1_read_comment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_sm1_read_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WINED3D_SM1_OPCODE_MASK = common dso_local global i64 0, align 8
@WINED3D_SM1_OP_COMMENT = common dso_local global i64 0, align 8
@WINED3D_SM1_COMMENT_SIZE_MASK = common dso_local global i64 0, align 8
@WINED3D_SM1_COMMENT_SIZE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"// TEXT\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"// %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64**)* @shader_sm1_read_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sm1_read_comment(i64** %0) #0 {
  %2 = alloca i64**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i64** %0, i64*** %2, align 8
  %10 = load i64**, i64*** %2, align 8
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %119, %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @WINED3D_SM1_OPCODE_MASK, align 8
  %16 = and i64 %14, %15
  %17 = load i64, i64* @WINED3D_SM1_OP_COMMENT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %123

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @WINED3D_SM1_COMMENT_SIZE_MASK, align 8
  %22 = and i64 %20, %21
  %23 = load i64, i64* @WINED3D_SM1_COMMENT_SIZE_SHIFT, align 8
  %24 = ashr i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i64**, i64*** %2, align 8
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %28, i64** %26, align 8
  %29 = bitcast i64* %28 to i8*
  store i8* %29, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i64**, i64*** %2, align 8
  %32 = load i64*, i64** %31, align 8
  %33 = sext i32 %30 to i64
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64* %34, i64** %31, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %106

37:                                               ; preds = %19
  %38 = load i8*, i8** %4, align 8
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @WINEMAKEFOURCC(i8 signext 84, i8 signext 69, i8 signext 88, i8 signext 84)
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %106

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  store i8* %51, i8** %8, align 8
  %52 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %90, %43
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 13
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %71, %62
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @debugstr_an(i8* %81, i32 %82)
  %84 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %7, align 8
  store i8* %86, i8** %8, align 8
  br label %90

87:                                               ; preds = %57
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  br label %90

90:                                               ; preds = %87, %80
  br label %53

91:                                               ; preds = %53
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = icmp ne i8* %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @debugstr_an(i8* %96, i32 %102)
  %104 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %95, %91
  br label %119

106:                                              ; preds = %37, %19
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @debugstr_an(i8* %110, i32 %114)
  %116 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %118

117:                                              ; preds = %106
  br label %123

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %105
  %120 = load i64**, i64*** %2, align 8
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %3, align 8
  br label %13

123:                                              ; preds = %117, %13
  ret void
}

declare dso_local i64 @WINEMAKEFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
