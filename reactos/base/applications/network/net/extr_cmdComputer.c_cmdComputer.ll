; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdComputer.c_cmdComputer.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdComputer.c_cmdComputer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32, i32*, i32*, i32*, i32, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@LM20_PWLEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@NERR_Success = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i32] [i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@MSG_COMPUTER_SYNTAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 47, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@MSG_COMPUTER_HELP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 47, i32 97, i32 100, i32 100, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i32] [i32 47, i32 100, i32 101, i32 108, i32 0], align 4
@.str.5 = private unnamed_addr constant [2 x i32] [i32 36, i32 0], align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@USER_PRIV_USER = common dso_local global i32 0, align 4
@UF_SCRIPT = common dso_local global i32 0, align 4
@UF_WORKSTATION_TRUST_ACCOUNT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdComputer(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = add nsw i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @LM20_PWLEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %28 = load i64, i64* @NERR_Success, align 8
  store i64 %28, i64* %15, align 8
  store i32 2, i32* %10, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %57

31:                                               ; preds = %2
  %32 = load i32**, i32*** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 92
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load i32**, i32*** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 92
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load i32**, i32*** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %14, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %49, %40, %31, %2
  br label %58

58:                                               ; preds = %114, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %117

62:                                               ; preds = %58
  %63 = load i32**, i32*** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @_wcsicmp(i32* %67, i8* bitcast ([5 x i32]* @.str to i8*))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = call i32 @PrintMessageString(i32 4381)
  %72 = load i32, i32* @StdOut, align 4
  %73 = call i32 @ConPuts(i32 %72, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %74 = load i32, i32* @MSG_COMPUTER_SYNTAX, align 4
  %75 = call i32 @PrintNetMessage(i32 %74)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %191

76:                                               ; preds = %62
  %77 = load i32**, i32*** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @_wcsicmp(i32* %81, i8* bitcast ([6 x i32]* @.str.2 to i8*))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = call i32 @PrintMessageString(i32 4381)
  %86 = load i32, i32* @StdOut, align 4
  %87 = call i32 @ConPuts(i32 %86, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %88 = load i32, i32* @MSG_COMPUTER_SYNTAX, align 4
  %89 = call i32 @PrintNetMessage(i32 %88)
  %90 = load i32, i32* @MSG_COMPUTER_HELP, align 4
  %91 = call i32 @PrintNetMessage(i32 %90)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %191

92:                                               ; preds = %76
  %93 = load i32**, i32*** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @_wcsicmp(i32* %97, i8* bitcast ([5 x i32]* @.str.3 to i8*))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i64, i64* @TRUE, align 8
  store i64 %101, i64* %12, align 8
  br label %114

102:                                              ; preds = %92
  %103 = load i32**, i32*** %5, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = call i64 @_wcsicmp(i32* %107, i8* bitcast ([5 x i32]* @.str.4 to i8*))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i64, i64* @TRUE, align 8
  store i64 %111, i64* %13, align 8
  br label %114

112:                                              ; preds = %102
  %113 = call i32 @PrintErrorMessage(i64 3506)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %191

114:                                              ; preds = %110, %100
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %58

117:                                              ; preds = %58
  %118 = load i32*, i32** %14, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %136, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* @FALSE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* @FALSE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %136, label %128

128:                                              ; preds = %124, %120
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* @TRUE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* @TRUE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132, %124, %117
  %137 = call i32 @PrintMessageString(i32 4381)
  %138 = load i32, i32* @StdOut, align 4
  %139 = call i32 @ConPuts(i32 %138, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %140 = load i32, i32* @MSG_COMPUTER_SYNTAX, align 4
  %141 = call i32 @PrintNetMessage(i32 %140)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %191

142:                                              ; preds = %132, %128
  %143 = load i32*, i32** %14, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = call i32 @wcscpy(i32* %21, i32* %144)
  %146 = call i32 @wcscat(i32* %21, i8* bitcast ([2 x i32]* @.str.5 to i8*))
  %147 = load i64, i64* %12, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %142
  %150 = load i32*, i32** %14, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* @LM20_PWLEN, align 4
  %153 = call i32 @wcsncpy(i32* %25, i32* %151, i32 %152)
  %154 = load i32, i32* @UNICODE_NULL, align 4
  %155 = load i32, i32* @LM20_PWLEN, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %25, i64 %156
  store i32 %154, i32* %157, align 4
  %158 = call i32 @_wcslwr(i32* %25)
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32* %21, i32** %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32* %25, i32** %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 7
  store i64 0, i64* %161, align 8
  %162 = load i32, i32* @USER_PRIV_USER, align 4
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 6
  store i32 %162, i32* %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store i32* null, i32** %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i32* null, i32** %165, align 8
  %166 = load i32, i32* @UF_SCRIPT, align 4
  %167 = load i32, i32* @UF_WORKSTATION_TRUST_ACCOUNT, align 4
  %168 = or i32 %166, %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %168, i32* %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i32* null, i32** %170, align 8
  %171 = ptrtoint %struct.TYPE_2__* %9 to i32
  %172 = call i64 @NetUserAdd(i32* null, i32 1, i32 %171, i32* null)
  store i64 %172, i64* %15, align 8
  br label %179

173:                                              ; preds = %142
  %174 = load i64, i64* %13, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call i64 @NetUserDel(i32* null, i32* %21)
  store i64 %177, i64* %15, align 8
  br label %178

178:                                              ; preds = %176, %173
  br label %179

179:                                              ; preds = %178, %149
  %180 = load i64, i64* %15, align 8
  %181 = load i64, i64* @NERR_Success, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i64, i64* @ERROR_SUCCESS, align 8
  %185 = call i32 @PrintErrorMessage(i64 %184)
  br label %189

186:                                              ; preds = %179
  %187 = load i64, i64* %15, align 8
  %188 = call i32 @PrintErrorMessage(i64 %187)
  store i32 1, i32* %11, align 4
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i32, i32* %11, align 4
  store i32 %190, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %191

191:                                              ; preds = %189, %136, %112, %84, %70
  %192 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %192)
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @_wcsicmp(i32*, i8*) #2

declare dso_local i32 @PrintMessageString(i32) #2

declare dso_local i32 @ConPuts(i32, i8*) #2

declare dso_local i32 @PrintNetMessage(i32) #2

declare dso_local i32 @PrintErrorMessage(i64) #2

declare dso_local i32 @wcscpy(i32*, i32*) #2

declare dso_local i32 @wcscat(i32*, i8*) #2

declare dso_local i32 @wcsncpy(i32*, i32*, i32) #2

declare dso_local i32 @_wcslwr(i32*) #2

declare dso_local i64 @NetUserAdd(i32*, i32, i32, i32*) #2

declare dso_local i64 @NetUserDel(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
