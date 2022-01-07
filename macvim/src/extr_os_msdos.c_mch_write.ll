; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_msdos.c_mch_write.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_msdos.c_mch_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@term_console = common dso_local global i64 0, align 8
@full_screen = common dso_local global i64 0, align 8
@p_wd = common dso_local global i64 0, align 8
@ESC = common dso_local global i8 0, align 1
@S_iTop = common dso_local global i32 0, align 4
@S_iBottom = common dso_local global i32 0, align 4
@S_iLeft = common dso_local global i32 0, align 4
@S_iRight = common dso_local global i32 0, align 4
@S_iCurrentColumn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mch_write(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @term_console, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %212

10:                                               ; preds = %2
  %11 = load i64, i64* @full_screen, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %212

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %206, %190, %136, %62, %13
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %211

18:                                               ; preds = %14
  %19 = load i64, i64* @p_wd, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* @p_wd, align 8
  %23 = call i32 @WaitForChar(i64 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @myputch(i8 signext 13)
  br label %206

32:                                               ; preds = %24
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @ESC, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %205

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %205

43:                                               ; preds = %40
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 124
  br i1 %48, label %49, label %205

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %204 [
    i32 74, label %54
    i32 75, label %56
    i32 76, label %58
    i32 77, label %60
    i32 48, label %67
    i32 49, label %67
    i32 50, label %67
    i32 51, label %67
    i32 52, label %67
    i32 53, label %67
    i32 54, label %67
    i32 55, label %67
    i32 56, label %67
    i32 57, label %67
  ]

54:                                               ; preds = %49
  %55 = call i32 (...) @myclrscr()
  br label %62

56:                                               ; preds = %49
  %57 = call i32 (...) @myclreol()
  br label %62

58:                                               ; preds = %49
  %59 = call i32 (...) @myinsline()
  br label %62

60:                                               ; preds = %49
  %61 = call i32 (...) @mydelline()
  br label %62

62:                                               ; preds = %60, %58, %56, %54
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8* %64, i8** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 2
  store i32 %66, i32* %4, align 4
  br label %14

67:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49, %49, %49
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %69, i8** %5, align 8
  %70 = call i32 @mygetdigits(i8** %5)
  store i32 %70, i32* %6, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = icmp ugt i8* %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %204

78:                                               ; preds = %67
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 59
  br i1 %82, label %83, label %149

83:                                               ; preds = %78
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  %86 = call i32 @mygetdigits(i8** %5)
  store i32 %86, i32* %7, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = icmp ugt i8* %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %204

94:                                               ; preds = %83
  %95 = load i8*, i8** %5, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 72
  br i1 %98, label %109, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %5, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 114
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load i8*, i8** %5, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 86
  br i1 %108, label %109, label %148

109:                                              ; preds = %104, %99, %94
  %110 = load i8*, i8** %5, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 72
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @mygotoxy(i32 %115, i32 %116)
  br label %136

118:                                              ; preds = %109
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 86
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @S_iTop, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @S_iBottom, align 4
  %128 = call i32 @mywindow(i32 %124, i32 %125, i32 %126, i32 %127)
  br label %135

129:                                              ; preds = %118
  %130 = load i32, i32* @S_iLeft, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @S_iRight, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @mywindow(i32 %130, i32 %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %129, %123
  br label %136

136:                                              ; preds = %135, %114
  %137 = load i8*, i8** %5, align 8
  %138 = load i8*, i8** %3, align 8
  %139 = ptrtoint i8* %137 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = sub nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %4, align 4
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  store i8* %147, i8** %3, align 8
  br label %14

148:                                              ; preds = %104
  br label %203

149:                                              ; preds = %78
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 109
  br i1 %153, label %164, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** %5, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 102
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 98
  br i1 %163, label %164, label %202

164:                                              ; preds = %159, %154, %149
  %165 = load i8*, i8** %5, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 109
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load i32, i32* %6, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = call i32 (...) @mynormvideo()
  br label %177

174:                                              ; preds = %169
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @mytextattr(i32 %175)
  br label %177

177:                                              ; preds = %174, %172
  br label %190

178:                                              ; preds = %164
  %179 = load i8*, i8** %5, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 102
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @mytextcolor(i32 %184)
  br label %189

186:                                              ; preds = %178
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @mytextbackground(i32 %187)
  br label %189

189:                                              ; preds = %186, %183
  br label %190

190:                                              ; preds = %189, %177
  %191 = load i8*, i8** %5, align 8
  %192 = load i8*, i8** %3, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = sub nsw i64 %197, %195
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %4, align 4
  %200 = load i8*, i8** %5, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  store i8* %201, i8** %3, align 8
  br label %14

202:                                              ; preds = %159
  br label %203

203:                                              ; preds = %202, %148
  br label %204

204:                                              ; preds = %203, %49, %93, %77
  br label %205

205:                                              ; preds = %204, %43, %40, %32
  br label %206

206:                                              ; preds = %205, %30
  %207 = load i8*, i8** %3, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %3, align 8
  %209 = load i8, i8* %207, align 1
  %210 = call i32 @myputch(i8 signext %209)
  br label %14

211:                                              ; preds = %14
  br label %216

212:                                              ; preds = %10, %2
  %213 = load i8*, i8** %3, align 8
  %214 = load i32, i32* %4, align 4
  %215 = call i32 @write(i32 1, i8* %213, i32 %214)
  br label %216

216:                                              ; preds = %212, %211
  ret void
}

declare dso_local i32 @WaitForChar(i64) #1

declare dso_local i32 @myputch(i8 signext) #1

declare dso_local i32 @myclrscr(...) #1

declare dso_local i32 @myclreol(...) #1

declare dso_local i32 @myinsline(...) #1

declare dso_local i32 @mydelline(...) #1

declare dso_local i32 @mygetdigits(i8**) #1

declare dso_local i32 @mygotoxy(i32, i32) #1

declare dso_local i32 @mywindow(i32, i32, i32, i32) #1

declare dso_local i32 @mynormvideo(...) #1

declare dso_local i32 @mytextattr(i32) #1

declare dso_local i32 @mytextcolor(i32) #1

declare dso_local i32 @mytextbackground(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
