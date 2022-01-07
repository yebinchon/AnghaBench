; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http_parse_header_line.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http_parse_header_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32* }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @ngx_mail_auth_http_parse_header_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_mail_auth_http_parse_header_line(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  br label %18

18:                                               ; preds = %172, %2
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ult i32* %19, %24
  br i1 %25, label %26, label %175

26:                                               ; preds = %18
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %171 [
    i32 0, label %30
    i32 1, label %62
    i32 2, label %117
    i32 3, label %139
    i32 4, label %154
    i32 5, label %161
    i32 6, label %166
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %40 [
    i32 129, label %32
    i32 128, label %36
  ]

32:                                               ; preds = %30
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  store i32 6, i32* %9, align 4
  br label %61

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  br label %195

40:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, 32
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 97
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = icmp sle i32 %49, 122
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %61

52:                                               ; preds = %48, %40
  %53 = load i32, i32* %7, align 4
  %54 = icmp sge i32 %53, 48
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp sle i32 %56, 57
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %61

59:                                               ; preds = %55, %52
  %60 = load i32, i32* @NGX_ERROR, align 4
  store i32 %60, i32* %3, align 4
  br label %205

61:                                               ; preds = %58, %51, %32
  br label %171

62:                                               ; preds = %26
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, 32
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %65, 97
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = icmp sle i32 %68, 122
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %171

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 58
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  store i32* %75, i32** %77, align 8
  store i32 2, i32* %9, align 4
  br label %171

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 45
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %171

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = icmp sge i32 %83, 48
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = icmp sle i32 %86, 57
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %171

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 129
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32*, i32** %8, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  store i32* %93, i32** %95, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 4
  store i32* %96, i32** %98, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32* %99, i32** %101, align 8
  store i32 5, i32* %9, align 4
  br label %171

102:                                              ; preds = %89
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 128
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load i32*, i32** %8, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  store i32* %106, i32** %108, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  store i32* %109, i32** %111, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  br label %185

115:                                              ; preds = %102
  %116 = load i32, i32* @NGX_ERROR, align 4
  store i32 %116, i32* %3, align 4
  br label %205

117:                                              ; preds = %26
  %118 = load i32, i32* %7, align 4
  switch i32 %118, label %134 [
    i32 32, label %119
    i32 129, label %120
    i32 128, label %127
  ]

119:                                              ; preds = %117
  br label %138

120:                                              ; preds = %117
  %121 = load i32*, i32** %8, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 4
  store i32* %121, i32** %123, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32* %124, i32** %126, align 8
  store i32 5, i32* %9, align 4
  br label %138

127:                                              ; preds = %117
  %128 = load i32*, i32** %8, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  store i32* %128, i32** %130, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  store i32* %131, i32** %133, align 8
  br label %185

134:                                              ; preds = %117
  %135 = load i32*, i32** %8, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  store i32* %135, i32** %137, align 8
  store i32 3, i32* %9, align 4
  br label %138

138:                                              ; preds = %134, %120, %119
  br label %171

139:                                              ; preds = %26
  %140 = load i32, i32* %7, align 4
  switch i32 %140, label %153 [
    i32 32, label %141
    i32 129, label %145
    i32 128, label %149
  ]

141:                                              ; preds = %139
  %142 = load i32*, i32** %8, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  store i32* %142, i32** %144, align 8
  store i32 4, i32* %9, align 4
  br label %153

145:                                              ; preds = %139
  %146 = load i32*, i32** %8, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  store i32* %146, i32** %148, align 8
  store i32 5, i32* %9, align 4
  br label %153

149:                                              ; preds = %139
  %150 = load i32*, i32** %8, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i32* %150, i32** %152, align 8
  br label %185

153:                                              ; preds = %139, %145, %141
  br label %171

154:                                              ; preds = %26
  %155 = load i32, i32* %7, align 4
  switch i32 %155, label %159 [
    i32 32, label %156
    i32 129, label %157
    i32 128, label %158
  ]

156:                                              ; preds = %154
  br label %160

157:                                              ; preds = %154
  store i32 5, i32* %9, align 4
  br label %160

158:                                              ; preds = %154
  br label %185

159:                                              ; preds = %154
  store i32 3, i32* %9, align 4
  br label %160

160:                                              ; preds = %159, %157, %156
  br label %171

161:                                              ; preds = %26
  %162 = load i32, i32* %7, align 4
  switch i32 %162, label %164 [
    i32 128, label %163
  ]

163:                                              ; preds = %161
  br label %185

164:                                              ; preds = %161
  %165 = load i32, i32* @NGX_ERROR, align 4
  store i32 %165, i32* %3, align 4
  br label %205

166:                                              ; preds = %26
  %167 = load i32, i32* %7, align 4
  switch i32 %167, label %169 [
    i32 128, label %168
  ]

168:                                              ; preds = %166
  br label %195

169:                                              ; preds = %166
  %170 = load i32, i32* @NGX_ERROR, align 4
  store i32 %170, i32* %3, align 4
  br label %205

171:                                              ; preds = %26, %160, %153, %138, %92, %88, %81, %74, %70, %61
  br label %172

172:                                              ; preds = %171
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %8, align 8
  br label %18

175:                                              ; preds = %18
  %176 = load i32*, i32** %8, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  store i32* %176, i32** %180, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %184, i32* %3, align 4
  br label %205

185:                                              ; preds = %163, %158, %149, %127, %105
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  store i32* %187, i32** %191, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  store i32 0, i32* %193, align 8
  %194 = load i32, i32* @NGX_OK, align 4
  store i32 %194, i32* %3, align 4
  br label %205

195:                                              ; preds = %168, %36
  %196 = load i32*, i32** %8, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  store i32* %197, i32** %201, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  %204 = load i32, i32* @NGX_DONE, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %195, %185, %175, %169, %164, %115, %59
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
