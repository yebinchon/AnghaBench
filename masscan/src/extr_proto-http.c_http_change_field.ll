; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-http.c_http_change_field.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-http.c_http_change_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_change_field(i8** %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add i32 %21, %22
  %24 = add i32 %23, 1
  %25 = add i32 %24, 2
  %26 = call i8* @MALLOC(i32 %25)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i8*, ...) @memcpy(i8* %27, i8* %28, i32 %29)
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %141, %5
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %144

35:                                               ; preds = %31
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 13
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %141

44:                                               ; preds = %35
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %140

52:                                               ; preds = %44
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %65, %55
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sub i32 %58, 1
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 13
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %66, -1
  store i32 %67, i32* %13, align 4
  br label %56

68:                                               ; preds = %56
  br label %144

69:                                               ; preds = %52
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = add i32 %71, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i64 @memcasecmp(i8* %74, i8* %75, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %138

79:                                               ; preds = %69
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %98, %79
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* %16, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %93, 10
  br label %95

95:                                               ; preds = %87, %83
  %96 = phi i1 [ false, %83 ], [ %94, %87 ]
  br i1 %96, label %97, label %101

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %16, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %83

101:                                              ; preds = %95
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i8*, i8** %12, align 8
  %107 = load i32, i32* %16, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* %16, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %113, %105, %101
  %117 = load i8*, i8** %12, align 8
  %118 = load i32, i32* %13, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %16, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %16, align 4
  %127 = sub i32 %125, %126
  %128 = call i32 @memmove(i8* %120, i8* %124, i32 %127)
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %13, align 4
  %131 = sub i32 %129, %130
  %132 = load i32, i32* %7, align 4
  %133 = sub i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load i8*, i8** %12, align 8
  %135 = load i32, i32* %7, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8 0, i8* %137, align 1
  br label %144

138:                                              ; preds = %69
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139, %44
  br label %141

141:                                              ; preds = %140, %43
  %142 = load i32, i32* %13, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %31

144:                                              ; preds = %116, %68, %31
  %145 = load i8*, i8** %12, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %15, align 4
  %148 = add i32 %146, %147
  %149 = load i32, i32* %10, align 4
  %150 = add i32 %148, %149
  %151 = add i32 %150, 1
  %152 = add i32 %151, 2
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %145, i64 %153
  %155 = load i8*, i8** %12, align 8
  %156 = load i32, i32* %13, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %13, align 4
  %161 = sub i32 %159, %160
  %162 = call i32 @memmove(i8* %154, i8* %158, i32 %161)
  %163 = load i8*, i8** %12, align 8
  %164 = load i32, i32* %13, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8*, i8** %8, align 8
  %168 = load i32, i32* %15, align 4
  %169 = call i32 (i8*, ...) @memcpy(i8* %166, i8* %167, i32 %168)
  %170 = load i8*, i8** %12, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %15, align 4
  %173 = add i32 %171, %172
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %170, i64 %174
  %176 = call i32 (i8*, ...) @memcpy(i8* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %177 = load i8*, i8** %12, align 8
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %15, align 4
  %180 = add i32 %178, %179
  %181 = add i32 %180, 1
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %177, i64 %182
  %184 = load i8*, i8** %9, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call i32 (i8*, ...) @memcpy(i8* %183, i8* %184, i32 %185)
  %187 = load i8*, i8** %12, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %15, align 4
  %190 = add i32 %188, %189
  %191 = add i32 %190, 1
  %192 = load i32, i32* %10, align 4
  %193 = add i32 %191, %192
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %187, i64 %194
  %196 = call i32 (i8*, ...) @memcpy(i8* %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %197 = load i32, i32* %15, align 4
  %198 = add i32 %197, 1
  %199 = load i32, i32* %10, align 4
  %200 = add i32 %198, %199
  %201 = add i32 %200, 2
  %202 = load i32, i32* %7, align 4
  %203 = add i32 %202, %201
  store i32 %203, i32* %7, align 4
  %204 = load i8*, i8** %11, align 8
  %205 = call i32 @free(i8* %204)
  %206 = load i8*, i8** %12, align 8
  %207 = load i8**, i8*** %6, align 8
  store i8* %206, i8** %207, align 8
  %208 = load i32, i32* %7, align 4
  ret i32 %208
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @MALLOC(i32) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i64 @memcasecmp(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
