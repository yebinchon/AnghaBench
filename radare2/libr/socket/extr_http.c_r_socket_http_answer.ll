; ModuleID = '/home/carl/AnghaBench/radare2/libr/socket/extr_http.c_r_socket_http_answer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/socket/extr_http.c_r_socket_http_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Content-Length: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32*)* @r_socket_http_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_socket_http_answer(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @r_return_val_if_fail(i32* %17, i32* null)
  store i32 0, i32* %10, align 4
  store i32 32768, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 32
  %21 = call i8* @calloc(i32 1, i32 %20)
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %148

25:                                               ; preds = %3
  store i8* null, i8** %15, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @__socket_slurp(i32* %26, i32* %28, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = call i8* @r_str_casestr(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %13, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %12, align 4
  br label %46

37:                                               ; preds = %25
  %38 = load i8*, i8** %14, align 8
  %39 = call i8* @r_str_casestr(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** %13, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 4
  store i32 %43, i32* %12, align 4
  br label %45

44:                                               ; preds = %37
  br label %136

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %16, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %16, align 4
  %50 = load i8*, i8** %13, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %14, align 8
  %52 = call i8* @r_str_casestr(i8* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 16
  %58 = call i32 @atoi(i8* %57)
  store i32 %58, i32* %10, align 4
  br label %69

59:                                               ; preds = %46
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = load i8*, i8** %13, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sub nsw i64 %61, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %59, %55
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %134

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 2
  %79 = call i8* @malloc(i32 %78)
  store i8* %79, i8** %15, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @memcpy(i8* %80, i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %105, %76
  %88 = load i32*, i32** %5, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %16, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @r_socket_read_block(i32* %88, i32* %93, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %109

101:                                              ; preds = %87
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %87, label %109

109:                                              ; preds = %105, %100
  %110 = load i8*, i8** %15, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 0, i8* %113, align 1
  br label %133

114:                                              ; preds = %72
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i8* @malloc(i32 %116)
  store i8* %117, i8** %15, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %114
  %121 = load i8*, i8** %15, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @memcpy(i8* %121, i8* %125, i32 %126)
  %128 = load i8*, i8** %15, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 0, i8* %131, align 1
  br label %132

132:                                              ; preds = %120, %114
  br label %133

133:                                              ; preds = %132, %109
  br label %135

134:                                              ; preds = %69
  store i8* null, i8** %15, align 8
  br label %135

135:                                              ; preds = %134, %133
  br label %136

136:                                              ; preds = %135, %44
  %137 = load i8*, i8** %14, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @r_socket_close(i32* %139)
  %141 = load i32*, i32** %7, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i32, i32* %10, align 4
  %145 = load i32*, i32** %7, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %136
  %147 = load i8*, i8** %15, align 8
  store i8* %147, i8** %4, align 8
  br label %148

148:                                              ; preds = %146, %24
  %149 = load i8*, i8** %4, align 8
  ret i8* %149
}

declare dso_local i32 @r_return_val_if_fail(i32*, i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @__socket_slurp(i32*, i32*, i32) #1

declare dso_local i8* @r_str_casestr(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @r_socket_read_block(i32*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_socket_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
